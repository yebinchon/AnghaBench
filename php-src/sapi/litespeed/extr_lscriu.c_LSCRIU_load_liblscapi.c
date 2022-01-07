
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* DL_LOAD (char*) ;
 int dlclose (void*) ;
 char* dlerror () ;
 void* dlsym (void*,char*) ;
 int fprintf (int ,char*,int,char*,char*) ;
 void* psem_close ;
 void* psem_open ;
 void* psem_post ;
 void* s_lscapi_dump_me ;
 void* s_lscapi_prepare_me ;
 scalar_t__ s_native ;
 int s_pid ;
 int stderr ;

__attribute__((used)) static int LSCRIU_load_liblscapi(void)
{
    void *lib_handle = ((void*)0);
    void *pthread_lib_handle = ((void*)0);

    if (s_native)
        return 0;

    int error = 1;
    char *last;

    if (!(lib_handle = DL_LOAD(last = "liblscapi.so")) )

        fprintf(stderr, "LSCRIU (%d): failed to dlopen %s: %s - ignore CRIU\n",
                s_pid, last, dlerror());
    else if (!(s_lscapi_dump_me = dlsym(lib_handle, last = "lscapi_dump_me")) ||
                !(s_lscapi_prepare_me = dlsym(lib_handle, last = "lscapi_prepare_me")) ||
                !(psem_open = dlsym(pthread_lib_handle, last = "sem_open")) ||
                !(psem_post = dlsym(pthread_lib_handle, last = "sem_post")) ||
                !(psem_close = dlsym(pthread_lib_handle, last = "sem_close")))
        fprintf(stderr, "LSCRIU (%d): failed to dlsym %s: %s - ignore CRIU\n",
                s_pid, last, dlerror());
    else
        error = 0;
    if (error) {

        if (lib_handle)
            dlclose(lib_handle);
        if (pthread_lib_handle)
            dlclose(pthread_lib_handle);
        return -1;
    }
    return 0;
}

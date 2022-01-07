
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_InitRequest (int *,int ) ;
 int LSAPI_SOCK_FILENO ;
 int RTLD_LAZY ;
 int SIGPIPE ;
 int SIGUSR1 ;
 int SIGXFSZ ;
 int SIG_IGN ;
 void* dlopen (char*,int ) ;
 int dlsym (void*,char*) ;
 int dup2 (int,int) ;
 int g_inited ;
 int g_req ;
 int geteuid () ;
 int getppid () ;
 int lsapi_signal (int ,int ) ;
 int lsapi_sigpipe ;
 int lsapi_siguser1 ;
 int pthread_atfork_func ;
 int s_ppid ;
 scalar_t__* s_secret ;
 int s_uid ;
 int signal (int ,int ) ;

int LSAPI_Init(void)
{
    if ( !g_inited )
    {
        s_uid = geteuid();
        s_secret[0] = 0;
        lsapi_signal(SIGPIPE, lsapi_sigpipe);
        lsapi_signal(SIGUSR1, lsapi_siguser1);






        dup2( 2, 1 );
        if ( LSAPI_InitRequest( &g_req, LSAPI_SOCK_FILENO ) == -1 )
            return -1;
        g_inited = 1;
        s_ppid = getppid();
        void *pthread_lib = dlopen("libpthread.so", RTLD_LAZY);
        if (pthread_lib)
            pthread_atfork_func = dlsym(pthread_lib, "pthread_atfork");

    }
    return 0;
}

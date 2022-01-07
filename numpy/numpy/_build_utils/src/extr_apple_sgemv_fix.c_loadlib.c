
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fortran_sgemv_t ;
typedef int errormsg ;
typedef int cblas_sgemv_t ;
typedef int cblas_sgemm_t ;


 int AVX_and_10_9 ;
 int Py_FatalError (char*) ;
 int RTLD_FIRST ;
 int RTLD_LOCAL ;
 char* VECLIB_FILE ;
 int * accelerate_cblas_sgemm ;
 int * accelerate_cblas_sgemv ;
 int * accelerate_sgemv ;
 int cpu_supports_avx () ;
 int * dlopen (char*,int) ;
 scalar_t__ dlsym (int *,char*) ;
 int memset (void*,int ,int) ;
 int snprintf (char*,int,char*,char*) ;
 int unloadlib () ;
 int using_mavericks () ;
 int * veclib ;

__attribute__((used)) __attribute__((constructor))
static void loadlib()

{
    char errormsg[1024];
    int AVX, MAVERICKS;
    memset((void*)errormsg, 0, sizeof(errormsg));

    AVX = cpu_supports_avx();

    MAVERICKS = using_mavericks();


    AVX_and_10_9 = AVX && MAVERICKS;

    veclib = dlopen(VECLIB_FILE, RTLD_LOCAL | RTLD_FIRST);
    if (!veclib) {
        veclib = ((void*)0);
        snprintf(errormsg, sizeof(errormsg),
                 "Failed to open vecLib from location '%s'.", VECLIB_FILE);
        Py_FatalError(errormsg);
    }

    accelerate_sgemv = (fortran_sgemv_t*) dlsym(veclib, "sgemv_");
    if (!accelerate_sgemv) {
        unloadlib();
        Py_FatalError("Failed to resolve symbol 'sgemv_'.");
    }

    accelerate_cblas_sgemv = (cblas_sgemv_t*) dlsym(veclib, "cblas_sgemv");
    if (!accelerate_cblas_sgemv) {
        unloadlib();
        Py_FatalError("Failed to resolve symbol 'cblas_sgemv'.");
    }

    accelerate_cblas_sgemm = (cblas_sgemm_t*) dlsym(veclib, "cblas_sgemm");
    if (!accelerate_cblas_sgemm) {
        unloadlib();
        Py_FatalError("Failed to resolve symbol 'cblas_sgemm'.");
    }
}

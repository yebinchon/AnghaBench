
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procfile ;


 int PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ;
 int procfile_close (int *) ;
 int * procfile_open (char*,int *,int ) ;
 int * procfile_readall (int *) ;

int check_proc_1_io() {
    int ret = 0;

    procfile *ff = procfile_open("/proc/1/io", ((void*)0), PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
    if(!ff) goto cleanup;

    ff = procfile_readall(ff);
    if(!ff) goto cleanup;

    ret = 1;

cleanup:
    procfile_close(ff);
    return ret;
}

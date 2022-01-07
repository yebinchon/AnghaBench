
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 void* getenv (char*) ;
 int getpid () ;
 int iPidDump ;
 int lscriu_dbg (char*,int ,char const*,...) ;
 int lscriu_err (char*,int ) ;
 int s_criu_image_path ;
 int s_fd_native ;
 int strdup (char const*) ;

__attribute__((used)) static int init_native_env()
{
    char *pchFd;
    pchFd = getenv("LSAPI_CRIU_SYNC_FD");
    if (!pchFd)
        pchFd = getenv("LSCAPI_CRIU_SYNC_FD");

    const char *image_path;
    image_path = getenv("LSAPI_CRIU_IMAGE_PATH");
    if (!pchFd) {
        lscriu_err("LSCRIU (%d): LSAPI_CRIU_SYNC_FD internal environment "
                   "variable not set - contact Litespeed tech support\n", getpid());
        return -1;
    }
    if (!image_path) {
        lscriu_err("LSCRIU (%d): LSAPI_CRIU_IMAGE_PATH internal environment "
                   "variable not set - contact Litespeed tech support\n", getpid());
        return -1;
    }
    lscriu_dbg("LSCRIU (%d): Checkpoint dump.  ImagePath: %s\n",
               getpid(), image_path);

    s_fd_native = atoi(pchFd);
    lscriu_dbg("LSCRIU (%d): Native checkpoint.  Use filepointer %d (%s) to send "
               "pid %d\n", getpid(), s_fd_native, pchFd, iPidDump);
    s_criu_image_path = strdup(image_path);
    return 0;
}

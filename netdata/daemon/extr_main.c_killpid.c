
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int D_EXIT ;


 int SIGTERM ;
 int debug (int ,char*,int ) ;
 int errno ;
 int error (char*,int ) ;
 int kill (int ,int ) ;

int killpid(pid_t pid) {
    int ret;
    debug(D_EXIT, "Request to kill pid %d", pid);

    errno = 0;
    ret = kill(pid, SIGTERM);
    if (ret == -1) {
        switch(errno) {
            case 128:

                return ret;

            case 129:
                error("Cannot kill pid %d, but I do not have enough permissions.", pid);
                break;

            default:
                error("Cannot kill pid %d, but I received an error.", pid);
                break;
        }
    }

    return ret;
}

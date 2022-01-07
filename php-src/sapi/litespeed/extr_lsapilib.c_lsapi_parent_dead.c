
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EPERM ;
 scalar_t__ errno ;
 scalar_t__ getppid () ;
 int kill (scalar_t__,int ) ;
 scalar_t__ s_ppid ;
 scalar_t__ s_restored_ppid ;

__attribute__((used)) static int lsapi_parent_dead()
{

    if (!s_ppid) {

        return(0);
    }
    if (s_restored_ppid) {
        if (kill(s_restored_ppid,0) == -1) {
            if (errno == EPERM) {
                return(0);
            }
            return(1);
        }
        return(0);
    }
    return(s_ppid != getppid());
}

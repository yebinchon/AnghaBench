
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {int m_chSocketDir; int m_chImageDirectory; int m_iPidToDump; } ;
typedef TYPE_1__ criu_native_dump_t ;
typedef int criu_native_dump ;


 int errno ;
 int lscriu_dbg (char*,int ) ;
 int lscriu_err (char*,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int s_pid ;
 int strerror (int ) ;
 int strncpy (int ,char*,int) ;
 char* strrchr (int ,char) ;
 int write (int,TYPE_1__*,int) ;

__attribute__((used)) static int LSCRIU_Native_Dump(pid_t iPid,
                              char *pchImagePath,
                              int iFdNative) {
    criu_native_dump_t criu_native_dump;
    char *pchLastSlash;

    memset(&criu_native_dump, 0, sizeof(criu_native_dump));
    criu_native_dump.m_iPidToDump = iPid;
    strncpy(criu_native_dump.m_chImageDirectory, pchImagePath,
            sizeof(criu_native_dump.m_chImageDirectory));
    pchLastSlash = strrchr(criu_native_dump.m_chSocketDir,'/');
    if (pchLastSlash) {
        pchLastSlash++;
        (*pchLastSlash) = 0;
    }
    lscriu_dbg("LSCRIU (%d): Sent the dump request to the listener\n", s_pid);
    if (write(iFdNative,
              &criu_native_dump,
              sizeof(criu_native_dump)) == -1) {
        lscriu_err("LSCRIU (%d): Error sending dump request to the listener: %s\n",
                   s_pid, strerror(errno));
        return(-1);
    }
    return 0;
}

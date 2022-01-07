
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 scalar_t__ debug_enabled ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int info (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int am_i_running_as_root() {
    uid_t uid = getuid(), euid = geteuid();

    if(uid == 0 || euid == 0) {
        if(debug_enabled) info("I am running with escalated privileges, uid = %u, euid = %u.", uid, euid);
        return 1;
    }

    if(debug_enabled) info("I am not running with escalated privileges, uid = %u, euid = %u.", uid, euid);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ getresgid (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ getresuid (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ initgroups (char const*,scalar_t__) ;
 int lwan_status_info (char*,scalar_t__,scalar_t__,char const*) ;
 scalar_t__ setresgid (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ setresuid (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool switch_to_user(uid_t uid, gid_t gid, const char *username)
{
    uid_t ruid, euid, suid;
    gid_t rgid, egid, sgid;

    lwan_status_info("Dropping privileges to UID %d, GID %d (%s)",
        uid, gid, username);

    if (setresgid(gid, gid, gid) < 0)
        return 0;




    if (initgroups(username, gid) < 0)
        return 0;

    if (setresuid(uid, uid, uid) < 0)
        return 0;

    if (getresuid(&ruid, &euid, &suid) < 0)
        return 0;
    if (ruid != euid || euid != suid || suid != uid)
        return 0;

    if (getresgid(&rgid, &egid, &sgid) < 0)
        return 0;
    if (rgid != egid || egid != sgid || sgid != gid)
        return 0;

    return 1;
}

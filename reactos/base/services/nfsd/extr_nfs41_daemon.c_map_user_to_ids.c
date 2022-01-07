
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int nfs41_idmapper ;
typedef int gid_t ;
typedef int DWORD ;


 int GetLastError () ;
 int GetUserNameA (char*,int*) ;
 int NO_ERROR ;
 int UNLEN ;
 int default_gid ;
 int default_uid ;
 int dprintf (int,char*,char*) ;
 int eprintf (char*,int) ;
 scalar_t__ nfs41_idmap_name_to_ids (int *,char*,int *,int *) ;

__attribute__((used)) static int map_user_to_ids(nfs41_idmapper *idmapper, uid_t *uid, gid_t *gid)
{
    char username[UNLEN + 1];
    DWORD len = UNLEN + 1;
    int status = NO_ERROR;

    if (!GetUserNameA(username, &len)) {
        status = GetLastError();
        eprintf("GetUserName() failed with %d\n", status);
        goto out;
    }
    dprintf(1, "map_user_to_ids: mapping user %s\n", username);

    if (nfs41_idmap_name_to_ids(idmapper, username, uid, gid)) {

        *uid = default_uid;
        *gid = default_gid;
    }
out:
    return status;
}

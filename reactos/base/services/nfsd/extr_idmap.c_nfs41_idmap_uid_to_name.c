
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct idmap_user {int username; } ;
struct idmap_lookup {void const* value; int member_3; int member_2; int member_1; int member_0; } ;
struct idmap_context {int dummy; } ;
typedef scalar_t__ UINT_PTR ;


 int ATTR_UID ;
 int CLASS_USER ;
 int ERROR_BUFFER_OVERFLOW ;
 scalar_t__ FAILED (int ) ;
 int IDLVL ;
 int StringCchCopyA (char*,size_t,int ) ;
 int TYPE_INT ;
 int dprintf (int ,char*,scalar_t__,...) ;
 int eprintf (char*,int ,size_t) ;
 int idmap_lookup_user (struct idmap_context*,struct idmap_lookup*,struct idmap_user*) ;
 int uid_cmp ;

int nfs41_idmap_uid_to_name(
    struct idmap_context *context,
    uid_t uid,
    char *name,
    size_t len)
{
    UINT_PTR uidp = uid;
    struct idmap_lookup lookup = { ATTR_UID, CLASS_USER, TYPE_INT, uid_cmp };
    struct idmap_user user;
    int status;

    dprintf(IDLVL, "--> nfs41_idmap_uid_to_name(%u)\n", uid);

    lookup.value = (const void*)uidp;


    status = idmap_lookup_user(context, &lookup, &user);
    if (status) {
        dprintf(IDLVL, "<-- nfs41_idmap_uid_to_name(%u) "
            "failed with %d\n", uid, status);
        goto out;
    }

    if (FAILED(StringCchCopyA(name, len, user.username))) {
        status = ERROR_BUFFER_OVERFLOW;
        eprintf("username buffer overflow: '%s' > %u\n",
            user.username, len);
        goto out;
    }

    dprintf(IDLVL, "<-- nfs41_idmap_uid_to_name(%u) "
        "returning '%s'\n", uid, name);
out:
    return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_lookup {void const* value; int member_3; int member_2; int member_1; int member_0; } ;
struct idmap_group {int name; } ;
struct idmap_context {int dummy; } ;
typedef scalar_t__ gid_t ;
typedef scalar_t__ UINT_PTR ;


 int ATTR_GID ;
 int CLASS_GROUP ;
 int ERROR_BUFFER_OVERFLOW ;
 scalar_t__ FAILED (int ) ;
 int IDLVL ;
 int StringCchCopyA (char*,size_t,int ) ;
 int TYPE_INT ;
 int dprintf (int ,char*,scalar_t__,...) ;
 int eprintf (char*,int ,size_t) ;
 int gid_cmp ;
 int idmap_lookup_group (struct idmap_context*,struct idmap_lookup*,struct idmap_group*) ;

int nfs41_idmap_gid_to_group(
    struct idmap_context *context,
    gid_t gid,
    char *name,
    size_t len)
{
    UINT_PTR gidp = gid;
    struct idmap_lookup lookup = { ATTR_GID, CLASS_GROUP, TYPE_INT, gid_cmp };
    struct idmap_group group;
    int status;

    dprintf(IDLVL, "--> nfs41_idmap_gid_to_group(%u)\n", gid);

    lookup.value = (const void*)gidp;


    status = idmap_lookup_group(context, &lookup, &group);
    if (status) {
        dprintf(IDLVL, "<-- nfs41_idmap_gid_to_group(%u) "
            "failed with %d\n", gid, status);
        goto out;
    }

    if (FAILED(StringCchCopyA(name, len, group.name))) {
        status = ERROR_BUFFER_OVERFLOW;
        eprintf("group name buffer overflow: '%s' > %u\n",
            group.name, len);
        goto out;
    }

    dprintf(IDLVL, "<-- nfs41_idmap_gid_to_group(%u) "
        "returning '%s'\n", gid, name);
out:
    return status;
}

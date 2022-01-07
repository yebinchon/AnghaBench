
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_lookup {char const* value; int member_3; int member_2; int member_1; int member_0; } ;
struct idmap_group {int gid; } ;
struct idmap_context {int dummy; } ;
typedef int gid_t ;


 int ATTR_GROUP_NAME ;
 int CLASS_GROUP ;
 int IDLVL ;
 int TYPE_STR ;
 int dprintf (int ,char*,char const*,...) ;
 int group_cmp ;
 int idmap_lookup_group (struct idmap_context*,struct idmap_lookup*,struct idmap_group*) ;

int nfs41_idmap_group_to_gid(
    struct idmap_context *context,
    const char *name,
    gid_t *gid_out)
{
    struct idmap_lookup lookup = { ATTR_GROUP_NAME,
        CLASS_GROUP, TYPE_STR, group_cmp };
    struct idmap_group group;
    int status;

    dprintf(IDLVL, "--> nfs41_idmap_group_to_gid('%s')\n", name);

    lookup.value = name;


    status = idmap_lookup_group(context, &lookup, &group);
    if (status) {
        dprintf(IDLVL, "<-- nfs41_idmap_group_to_gid('%s') "
            "failed with %d\n", name, status);
        goto out;
    }

    *gid_out = group.gid;
    dprintf(IDLVL, "<-- nfs41_idmap_group_to_gid('%s') "
        "returning %u\n", name, group.gid);
out:
    return status;
}

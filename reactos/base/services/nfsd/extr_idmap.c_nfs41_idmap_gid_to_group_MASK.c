#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct idmap_lookup {void const* value; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct idmap_group {int /*<<< orphan*/  name; } ;
struct idmap_context {int dummy; } ;
typedef  scalar_t__ gid_t ;
typedef  scalar_t__ UINT_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_GID ; 
 int /*<<< orphan*/  CLASS_GROUP ; 
 int ERROR_BUFFER_OVERFLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDLVL ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  gid_cmp ; 
 int FUNC4 (struct idmap_context*,struct idmap_lookup*,struct idmap_group*) ; 

int FUNC5(
    struct idmap_context *context,
    gid_t gid,
    char *name,
    size_t len)
{
    UINT_PTR gidp = gid; /* convert to pointer size to pass as void* */
    struct idmap_lookup lookup = { ATTR_GID, CLASS_GROUP, TYPE_INT, gid_cmp };
    struct idmap_group group;
    int status;

    FUNC2(IDLVL, "--> nfs41_idmap_gid_to_group(%u)\n", gid);

    lookup.value = (const void*)gidp;

    /* look up the group entry */
    status = FUNC4(context, &lookup, &group);
    if (status) {
        FUNC2(IDLVL, "<-- nfs41_idmap_gid_to_group(%u) "
            "failed with %d\n", gid, status);
        goto out;
    }

    if (FUNC0(FUNC1(name, len, group.name))) {
        status = ERROR_BUFFER_OVERFLOW;
        FUNC3("group name buffer overflow: '%s' > %u\n",
            group.name, len);
        goto out;
    }

    FUNC2(IDLVL, "<-- nfs41_idmap_gid_to_group(%u) "
        "returning '%s'\n", gid, name);
out:
    return status;
}
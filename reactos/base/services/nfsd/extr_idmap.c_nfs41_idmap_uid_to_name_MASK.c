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
typedef  scalar_t__ uid_t ;
struct idmap_user {int /*<<< orphan*/  username; } ;
struct idmap_lookup {void const* value; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct idmap_context {int dummy; } ;
typedef  scalar_t__ UINT_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_UID ; 
 int /*<<< orphan*/  CLASS_USER ; 
 int ERROR_BUFFER_OVERFLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDLVL ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (struct idmap_context*,struct idmap_lookup*,struct idmap_user*) ; 
 int /*<<< orphan*/  uid_cmp ; 

int FUNC5(
    struct idmap_context *context,
    uid_t uid,
    char *name,
    size_t len)
{
    UINT_PTR uidp = uid; /* convert to pointer size to pass as void* */
    struct idmap_lookup lookup = { ATTR_UID, CLASS_USER, TYPE_INT, uid_cmp };
    struct idmap_user user;
    int status;

    FUNC2(IDLVL, "--> nfs41_idmap_uid_to_name(%u)\n", uid);

    lookup.value = (const void*)uidp;

    /* look up the user entry */
    status = FUNC4(context, &lookup, &user);
    if (status) {
        FUNC2(IDLVL, "<-- nfs41_idmap_uid_to_name(%u) "
            "failed with %d\n", uid, status);
        goto out;
    }

    if (FUNC0(FUNC1(name, len, user.username))) {
        status = ERROR_BUFFER_OVERFLOW;
        FUNC3("username buffer overflow: '%s' > %u\n",
            user.username, len);
        goto out;
    }

    FUNC2(IDLVL, "<-- nfs41_idmap_uid_to_name(%u) "
        "returning '%s'\n", uid, name);
out:
    return status;
}
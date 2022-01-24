#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_7__ {size_t count; int* arr; } ;
struct TYPE_8__ {char* owner; char* owner_group; TYPE_1__ attrmask; int /*<<< orphan*/  mode_mask; int /*<<< orphan*/  mode; int /*<<< orphan*/  time_delta; int /*<<< orphan*/  time_modify; int /*<<< orphan*/  time_create; int /*<<< orphan*/  time_access; int /*<<< orphan*/  system; int /*<<< orphan*/  hidden; int /*<<< orphan*/  archive; int /*<<< orphan*/  acl; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ nfs41_file_info ;
struct TYPE_10__ {size_t count; int* arr; } ;
struct TYPE_9__ {int /*<<< orphan*/  attr_vals_len; TYPE_6__ attrmask; scalar_t__ attr_vals; } ;
typedef  TYPE_3__ fattr4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  bitmap4 ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FATTR4_WORD0_ACL ; 
 int FATTR4_WORD0_ARCHIVE ; 
 int FATTR4_WORD0_HIDDEN ; 
 int FATTR4_WORD0_SIZE ; 
 int FATTR4_WORD1_MODE ; 
 int FATTR4_WORD1_OWNER ; 
 int FATTR4_WORD1_OWNER_GROUP ; 
 int FATTR4_WORD1_SYSTEM ; 
 int FATTR4_WORD1_TIME_ACCESS_SET ; 
 int FATTR4_WORD1_TIME_CREATE ; 
 int FATTR4_WORD1_TIME_MODIFY_SET ; 
 int FATTR4_WORD2_MODE_SET_MASKED ; 
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC12(
    fattr4 *attrs,
    nfs41_file_info *info)
{
    uint32_t i;
    XDR localxdr;

    FUNC11(&localxdr, (char *)attrs->attr_vals, NFS4_OPAQUE_LIMIT, XDR_ENCODE);

    attrs->attr_vals_len = 0;
    FUNC0(&attrs->attrmask, sizeof(bitmap4));
    attrs->attrmask.count = info->attrmask.count;

    if (info->attrmask.count > 0) {
        if (info->attrmask.arr[0] & FATTR4_WORD0_SIZE) {
            if (!FUNC9(&localxdr, &info->size))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_SIZE;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_ACL) {
            if (!FUNC6(&localxdr, info->acl))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_ACL;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_ARCHIVE) {
            if (!FUNC3(&localxdr, &info->archive))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_ARCHIVE;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_HIDDEN) {
            if (!FUNC3(&localxdr, &info->hidden))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_HIDDEN;
        }
    }
    if (info->attrmask.count > 1) {
        if (info->attrmask.arr[1] & FATTR4_WORD1_MODE) {
            if (!FUNC10(&localxdr, &info->mode))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_MODE;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_SYSTEM) {
            if (!FUNC3(&localxdr, &info->system))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_SYSTEM;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_ACCESS_SET) {
            if (!FUNC8(&localxdr, &info->time_access, info->time_delta))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_ACCESS_SET;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_CREATE) {
            if (!FUNC7(&localxdr, &info->time_create))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_CREATE;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_MODIFY_SET) {
            if (!FUNC8(&localxdr, &info->time_modify, info->time_delta))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_MODIFY_SET;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_OWNER) {
            char *ptr = &info->owner[0];
            uint32_t owner_len = (uint32_t)FUNC2(info->owner);
            if (!FUNC4(&localxdr, &ptr, &owner_len, 
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_OWNER;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_OWNER_GROUP) {
            char *ptr = &info->owner_group[0];
            uint32_t owner_group_len = (uint32_t)FUNC2(info->owner_group);
            if (!FUNC4(&localxdr, &ptr, &owner_group_len, 
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_OWNER_GROUP;
        }
    }
    if (info->attrmask.count > 2) {
        if (info->attrmask.arr[2] & FATTR4_WORD2_MODE_SET_MASKED) {
            if (!FUNC10(&localxdr, &info->mode))
                return FALSE;
            if (!FUNC10(&localxdr, &info->mode_mask))
                return FALSE;
            attrs->attrmask.arr[2] |= FATTR4_WORD2_MODE_SET_MASKED;
        }
    }

    /* warn if we try to set attributes that aren't handled */
    for (i = 0; i < info->attrmask.count; i++)
        if (attrs->attrmask.arr[i] != info->attrmask.arr[i])
            FUNC1("encode_file_attrs() attempted to encode extra "
                "attributes in arr[%d]: encoded %d, but wanted %d.\n",
                i, attrs->attrmask.arr[i], info->attrmask.arr[i]);

    attrs->attr_vals_len = FUNC5(&localxdr);
    return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_20__ {unsigned short len; int /*<<< orphan*/  path; } ;
struct TYPE_21__ {char* target_set; TYPE_5__ target_get; scalar_t__ set; } ;
typedef  TYPE_6__ symlink_upcall_args ;
struct TYPE_16__ {TYPE_6__ symlink; } ;
struct TYPE_22__ {TYPE_8__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_7__ nfs41_upcall ;
struct TYPE_17__ {int /*<<< orphan*/  fileid; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_4__* path; TYPE_2__ fh; int /*<<< orphan*/  name; } ;
struct TYPE_23__ {TYPE_10__ file; int /*<<< orphan*/  session; int /*<<< orphan*/  parent; } ;
typedef  TYPE_8__ nfs41_open_state ;
struct TYPE_18__ {int count; scalar_t__* arr; } ;
struct TYPE_24__ {int mode; TYPE_3__ attrmask; } ;
typedef  TYPE_9__ nfs41_file_info ;
struct TYPE_19__ {char* path; } ;

/* Variables and functions */
 scalar_t__ FATTR4_WORD1_MODE ; 
 int /*<<< orphan*/  NF4LNK ; 
 int /*<<< orphan*/  NFS41_MAX_PATH_LEN ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,char*,int /*<<< orphan*/ *,TYPE_10__*,TYPE_9__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(nfs41_upcall *upcall)
{
    symlink_upcall_args *args = &upcall->args.symlink;
    nfs41_open_state *state = upcall->state_ref;
    int status = NO_ERROR;

    if (args->set) {
        nfs41_file_info info, createattrs;

        /* don't send windows slashes to the server */
        char *p;
        for (p = args->target_set; *p; p++) if (*p == '\\') *p = '/';

        if (state->file.fh.len) {
            /* the check in handle_open() didn't catch that we're creating
             * a symlink, so we have to remove the file it already created */
            FUNC1("handle_symlink: attempting to create a symlink when "
                "the file=%s was already created on open; sending REMOVE "
                "first\n", state->file.path->path);
            status = FUNC5(state->session, &state->parent,
                &state->file.name, state->file.fh.fileid);
            if (status) {
                FUNC1("nfs41_remove() for symlink=%s failed with %s\n",
                    args->target_set, FUNC6(status));
                status = FUNC2(status);
                goto out;
            }
        }

        /* create the symlink */
        createattrs.attrmask.count = 2;
        createattrs.attrmask.arr[0] = 0;
        createattrs.attrmask.arr[1] = FATTR4_WORD1_MODE;
        createattrs.mode = 0777;
        status = FUNC3(state->session, NF4LNK, &createattrs,
            args->target_set, &state->parent, &state->file, &info);
        if (status) {
            FUNC1("nfs41_create() for symlink=%s failed with %s\n",
                args->target_set, FUNC6(status));
            status = FUNC2(status);
            goto out;
        }
    } else {
        uint32_t len;

        /* read the link */
        status = FUNC4(state->session, &state->file,
            NFS41_MAX_PATH_LEN, args->target_get.path, &len);
        if (status) {
            FUNC1("nfs41_readlink() for filename=%s failed with %s\n",
                state->file.path->path, FUNC6(status));
            status = FUNC2(status);
            goto out;
        }
        args->target_get.len = (unsigned short)len;
        FUNC0(2, "returning symlink target '%s'\n", args->target_get.path);
    }
out:
    return status;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_19__ {TYPE_3__ IndexNumber; } ;
struct TYPE_17__ {int /*<<< orphan*/  ReparseTag; int /*<<< orphan*/  FileAttributes; } ;
struct TYPE_23__ {int query_class; int /*<<< orphan*/  network_info; TYPE_4__ intr_info; TYPE_2__ tag_info; int /*<<< orphan*/  std_info; int /*<<< orphan*/  ctime; int /*<<< orphan*/  basic_info; } ;
struct TYPE_16__ {TYPE_8__ getattr; } ;
struct TYPE_20__ {int /*<<< orphan*/  root_ref; TYPE_6__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_5__ nfs41_upcall ;
struct TYPE_21__ {int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_6__ nfs41_open_state ;
struct TYPE_22__ {scalar_t__ type; int /*<<< orphan*/  fileid; int /*<<< orphan*/  change; int /*<<< orphan*/  symlink_dir; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ nfs41_file_info ;
typedef  TYPE_8__ getattr_upcall_args ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
#define  FileAttributeTagInformation 132 
#define  FileBasicInformation 131 
#define  FileInternalInformation 130 
#define  FileNetworkOpenInformation 129 
#define  FileStandardInformation 128 
 int /*<<< orphan*/  IO_REPARSE_TAG_SYMLINK ; 
 scalar_t__ NF4DIR ; 
 scalar_t__ NF4LNK ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(nfs41_upcall *upcall)
{
    int status;
    getattr_upcall_args *args = &upcall->args.getattr;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_file_info info = { 0 };

    status = FUNC1(state->session, &state->file, &info);
    if (status) {
        FUNC0("nfs41_cached_getattr() failed with %d\n", status);
        goto out;
    }

    if (info.type == NF4LNK) {
        nfs41_file_info target_info;
        int target_status = FUNC2(upcall->root_ref,
            state->session, &state->file, &target_info);
        if (target_status == NO_ERROR && target_info.type == NF4DIR)
            info.symlink_dir = TRUE;
    }

    switch (args->query_class) {
    case FileBasicInformation:
        FUNC4(&info, &args->basic_info);
        args->ctime = info.change;
        break;
    case FileStandardInformation:
        FUNC6(&info, &args->std_info);
        break;
    case FileAttributeTagInformation:
        args->tag_info.FileAttributes = FUNC3(&info);
        args->tag_info.ReparseTag = info.type == NF4LNK ?
            IO_REPARSE_TAG_SYMLINK : 0;
        break;
    case FileInternalInformation:
        args->intr_info.IndexNumber.QuadPart = info.fileid;
        break;
    case FileNetworkOpenInformation:
        FUNC5(&info, &args->network_info);
        break;
    default:
        FUNC0("unhandled file query class %d\n", args->query_class);
        status = ERROR_INVALID_PARAMETER;
        break;
    }
out:
    return status;
}
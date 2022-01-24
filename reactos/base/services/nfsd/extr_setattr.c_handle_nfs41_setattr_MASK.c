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
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stateid_arg ;
struct TYPE_18__ {int /*<<< orphan*/  ctime; TYPE_4__* state; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ setattr_upcall_args ;
struct TYPE_19__ {int /*<<< orphan*/  time_delta; scalar_t__ cansettime; } ;
typedef  TYPE_3__ nfs41_superblock ;
struct TYPE_17__ {int /*<<< orphan*/  fileid; TYPE_3__* superblock; } ;
struct TYPE_24__ {TYPE_1__ fh; } ;
struct TYPE_20__ {TYPE_9__ file; int /*<<< orphan*/  session; } ;
typedef  TYPE_4__ nfs41_open_state ;
struct TYPE_23__ {int count; int /*<<< orphan*/ * arr; } ;
struct TYPE_21__ {int hidden; int system; int archive; int mode; int /*<<< orphan*/  change; TYPE_8__ attrmask; int /*<<< orphan*/  time_modify; int /*<<< orphan*/  time_access; int /*<<< orphan*/  time_create; int /*<<< orphan*/ * time_delta; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ nfs41_file_info ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
struct TYPE_22__ {int FileAttributes; TYPE_15__ LastWriteTime; TYPE_15__ LastAccessTime; TYPE_15__ CreationTime; } ;
typedef  TYPE_6__* PFILE_BASIC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FATTR4_WORD0_ARCHIVE ; 
 int /*<<< orphan*/  FATTR4_WORD0_HIDDEN ; 
 int /*<<< orphan*/  FATTR4_WORD1_MODE ; 
 int /*<<< orphan*/  FATTR4_WORD1_SYSTEM ; 
 int /*<<< orphan*/  FATTR4_WORD1_TIME_ACCESS_SET ; 
 int /*<<< orphan*/  FATTR4_WORD1_TIME_CREATE ; 
 int /*<<< orphan*/  FATTR4_WORD1_TIME_MODIFY_SET ; 
 int FILE_ATTRIBUTE_ARCHIVE ; 
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FILE_ATTRIBUTE_SYSTEM ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  OPEN_DELEGATE_READ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(setattr_upcall_args *args)
{
    PFILE_BASIC_INFO basic_info = (PFILE_BASIC_INFO)args->buf;
    nfs41_open_state *state = args->state;
    nfs41_superblock *superblock = state->file.fh.superblock;
    stateid_arg stateid;
    nfs41_file_info info = { 0 }, old_info = { 0 };
    int status = NO_ERROR, getattr_status;
	
	if (basic_info->FileAttributes) {
		info.hidden = basic_info->FileAttributes & FILE_ATTRIBUTE_HIDDEN ? 1 : 0;
		info.system = basic_info->FileAttributes & FILE_ATTRIBUTE_SYSTEM ? 1 : 0;
		info.archive = basic_info->FileAttributes & FILE_ATTRIBUTE_ARCHIVE ? 1 : 0;
		getattr_status = FUNC2(FUNC9(state->session),
			state->file.fh.fileid, &old_info);

		if (getattr_status || info.hidden != old_info.hidden) {
			info.attrmask.arr[0] = FATTR4_WORD0_HIDDEN;
			info.attrmask.count = 1;
		}
		if (getattr_status || info.archive != old_info.archive) {
			info.attrmask.arr[0] |= FATTR4_WORD0_ARCHIVE;
			info.attrmask.count = 1;
		}
		if (getattr_status || info.system != old_info.system) {
			info.attrmask.arr[1] = FATTR4_WORD1_SYSTEM;
			info.attrmask.count = 2;
		}
	}
    if (old_info.mode == 0444 && 
            ((basic_info->FileAttributes & FILE_ATTRIBUTE_READONLY) == 0)) {
        info.mode = 0644;
        info.attrmask.arr[1] |= FATTR4_WORD1_MODE;
        info.attrmask.count = 2;
    }

    if (superblock->cansettime) {
        /* set the time_delta so xdr_settime4() can decide
         * whether or not to use SET_TO_SERVER_TIME4 */
        info.time_delta = &superblock->time_delta;

        /* time_create */
        if (basic_info->CreationTime.QuadPart > 0) {
            FUNC1(&basic_info->CreationTime,
                &info.time_create);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_CREATE;
            info.attrmask.count = 2;
        }
        /* time_access_set */
        if (basic_info->LastAccessTime.QuadPart > 0) {
            FUNC1(&basic_info->LastAccessTime,
                &info.time_access);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_ACCESS_SET;
            info.attrmask.count = 2;
        }
        /* time_modify_set */
        if (basic_info->LastWriteTime.QuadPart > 0) {
            FUNC1(&basic_info->LastWriteTime,
                &info.time_modify);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_MODIFY_SET;
            info.attrmask.count = 2;
        }
    }

    /* mode */
    if (basic_info->FileAttributes & FILE_ATTRIBUTE_READONLY) {
        info.mode = 0444;
        info.attrmask.arr[1] |= FATTR4_WORD1_MODE;
        info.attrmask.count = 2;
    }

    /* mask out unsupported attributes */
    FUNC6(superblock, &info.attrmask);

    if (!info.attrmask.count)
        goto out;

    /* break read delegations before SETATTR */
    FUNC3(state->session, &state->file,
        OPEN_DELEGATE_READ, FALSE);

    FUNC4(state, &stateid);

    status = FUNC5(state->session, &state->file, &stateid, &info);
    if (status) {
        FUNC0(1, "nfs41_setattr() failed with error %s.\n",
            FUNC7(status));
        status = FUNC8(status, ERROR_NOT_SUPPORTED);
    }
    args->ctime = info.change;
out:
    return status;
}
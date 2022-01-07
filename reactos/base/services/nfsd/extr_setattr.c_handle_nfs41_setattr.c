
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int stateid_arg ;
struct TYPE_18__ {int ctime; TYPE_4__* state; int buf; } ;
typedef TYPE_2__ setattr_upcall_args ;
struct TYPE_19__ {int time_delta; scalar_t__ cansettime; } ;
typedef TYPE_3__ nfs41_superblock ;
struct TYPE_17__ {int fileid; TYPE_3__* superblock; } ;
struct TYPE_24__ {TYPE_1__ fh; } ;
struct TYPE_20__ {TYPE_9__ file; int session; } ;
typedef TYPE_4__ nfs41_open_state ;
struct TYPE_23__ {int count; int * arr; } ;
struct TYPE_21__ {int hidden; int system; int archive; int mode; int change; TYPE_8__ attrmask; int time_modify; int time_access; int time_create; int * time_delta; int member_0; } ;
typedef TYPE_5__ nfs41_file_info ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
struct TYPE_22__ {int FileAttributes; TYPE_15__ LastWriteTime; TYPE_15__ LastAccessTime; TYPE_15__ CreationTime; } ;
typedef TYPE_6__* PFILE_BASIC_INFO ;


 int ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int FATTR4_WORD0_ARCHIVE ;
 int FATTR4_WORD0_HIDDEN ;
 int FATTR4_WORD1_MODE ;
 int FATTR4_WORD1_SYSTEM ;
 int FATTR4_WORD1_TIME_ACCESS_SET ;
 int FATTR4_WORD1_TIME_CREATE ;
 int FATTR4_WORD1_TIME_MODIFY_SET ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int NO_ERROR ;
 int OPEN_DELEGATE_READ ;
 int dprintf (int,char*,int ) ;
 int file_time_to_nfs_time (TYPE_15__*,int *) ;
 int nfs41_attr_cache_lookup (int ,int ,TYPE_5__*) ;
 int nfs41_delegation_return (int ,TYPE_9__*,int ,int ) ;
 int nfs41_open_stateid_arg (TYPE_4__*,int *) ;
 int nfs41_setattr (int ,TYPE_9__*,int *,TYPE_5__*) ;
 int nfs41_superblock_supported_attrs (TYPE_3__*,TYPE_8__*) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;
 int session_name_cache (int ) ;

__attribute__((used)) static int handle_nfs41_setattr(setattr_upcall_args *args)
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
  getattr_status = nfs41_attr_cache_lookup(session_name_cache(state->session),
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


        info.time_delta = &superblock->time_delta;


        if (basic_info->CreationTime.QuadPart > 0) {
            file_time_to_nfs_time(&basic_info->CreationTime,
                &info.time_create);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_CREATE;
            info.attrmask.count = 2;
        }

        if (basic_info->LastAccessTime.QuadPart > 0) {
            file_time_to_nfs_time(&basic_info->LastAccessTime,
                &info.time_access);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_ACCESS_SET;
            info.attrmask.count = 2;
        }

        if (basic_info->LastWriteTime.QuadPart > 0) {
            file_time_to_nfs_time(&basic_info->LastWriteTime,
                &info.time_modify);
            info.attrmask.arr[1] |= FATTR4_WORD1_TIME_MODIFY_SET;
            info.attrmask.count = 2;
        }
    }


    if (basic_info->FileAttributes & FILE_ATTRIBUTE_READONLY) {
        info.mode = 0444;
        info.attrmask.arr[1] |= FATTR4_WORD1_MODE;
        info.attrmask.count = 2;
    }


    nfs41_superblock_supported_attrs(superblock, &info.attrmask);

    if (!info.attrmask.count)
        goto out;


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_READ, FALSE);

    nfs41_open_stateid_arg(state, &stateid);

    status = nfs41_setattr(state->session, &state->file, &stateid, &info);
    if (status) {
        dprintf(1, "nfs41_setattr() failed with error %s.\n",
            nfs_error_string(status));
        status = nfs_to_windows_error(status, ERROR_NOT_SUPPORTED);
    }
    args->ctime = info.change;
out:
    return status;
}

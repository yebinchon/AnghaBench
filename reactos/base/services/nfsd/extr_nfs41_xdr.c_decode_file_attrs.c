
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef size_t uint32_t ;
struct TYPE_9__ {int count; int aces; } ;
typedef TYPE_2__ nfsacl41 ;
typedef int nfsace4 ;
struct TYPE_10__ {char* owner; char* owner_group; int suppattr_exclcreat; int mdsthreshold; int fs_layout_types; TYPE_2__* acl; int time_modify; int * time_delta; int time_create; int time_access; int system; int space_total; int space_free; int space_avail; int numlinks; int mode; int maxwrite; int maxread; int hidden; int fs_locations; int fileid; int case_preserving; int case_insensitive; int cansettime; int archive; int aclsupport; int rdattr_error; int lease_time; int fsid; int symlink_support; int link_support; int size; int change; int type; int supported_attrs; } ;
typedef TYPE_3__ nfs41_file_info ;
struct TYPE_8__ {int count; int* arr; } ;
struct TYPE_11__ {TYPE_1__ attrmask; } ;
typedef TYPE_4__ fattr4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int FATTR4_WORD0_ACL ;
 int FATTR4_WORD0_ACLSUPPORT ;
 int FATTR4_WORD0_ARCHIVE ;
 int FATTR4_WORD0_CANSETTIME ;
 int FATTR4_WORD0_CASE_INSENSITIVE ;
 int FATTR4_WORD0_CASE_PRESERVING ;
 int FATTR4_WORD0_CHANGE ;
 int FATTR4_WORD0_FILEID ;
 int FATTR4_WORD0_FSID ;
 int FATTR4_WORD0_FS_LOCATIONS ;
 int FATTR4_WORD0_HIDDEN ;
 int FATTR4_WORD0_LEASE_TIME ;
 int FATTR4_WORD0_LINK_SUPPORT ;
 int FATTR4_WORD0_MAXREAD ;
 int FATTR4_WORD0_MAXWRITE ;
 int FATTR4_WORD0_RDATTR_ERROR ;
 int FATTR4_WORD0_SIZE ;
 int FATTR4_WORD0_SUPPORTED_ATTRS ;
 int FATTR4_WORD0_SYMLINK_SUPPORT ;
 int FATTR4_WORD0_TYPE ;
 int FATTR4_WORD1_DACL ;
 int FATTR4_WORD1_FS_LAYOUT_TYPE ;
 int FATTR4_WORD1_MODE ;
 int FATTR4_WORD1_NUMLINKS ;
 int FATTR4_WORD1_OWNER ;
 int FATTR4_WORD1_OWNER_GROUP ;
 int FATTR4_WORD1_SPACE_AVAIL ;
 int FATTR4_WORD1_SPACE_FREE ;
 int FATTR4_WORD1_SPACE_TOTAL ;
 int FATTR4_WORD1_SYSTEM ;
 int FATTR4_WORD1_TIME_ACCESS ;
 int FATTR4_WORD1_TIME_CREATE ;
 int FATTR4_WORD1_TIME_DELTA ;
 int FATTR4_WORD1_TIME_MODIFY ;
 int FATTR4_WORD2_MDSTHRESHOLD ;
 int FATTR4_WORD2_SUPPATTR_EXCLCREAT ;
 int NFS4_OPAQUE_LIMIT ;
 int TRUE ;
 int decode_fs_locations4 (int *,int ) ;
 int xdr_array (int *,char**,int *,int,int,int ) ;
 int xdr_bitmap4 (int *,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_bytes (int *,char**,size_t*,int ) ;
 int xdr_fsid (int *,int *) ;
 int xdr_layout_types (int *,int *) ;
 int xdr_mdsthreshold (int *,int *) ;
 scalar_t__ xdr_nfsace4 ;
 int xdr_nfsdacl41 (int *,TYPE_2__*) ;
 int xdr_nfstime4 (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_file_attrs(
    XDR *xdr,
    fattr4 *attrs,
    nfs41_file_info *info)
{
    if (attrs->attrmask.count >= 1) {
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_SUPPORTED_ATTRS) {
            if (!xdr_bitmap4(xdr, info->supported_attrs))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_TYPE) {
            if (!xdr_u_int32_t(xdr, &info->type))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_CHANGE) {
            if (!xdr_u_hyper(xdr, &info->change))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_SIZE) {
            if (!xdr_u_hyper(xdr, &info->size))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_LINK_SUPPORT) {
            if (!xdr_bool(xdr, &info->link_support))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_SYMLINK_SUPPORT) {
            if (!xdr_bool(xdr, &info->symlink_support))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_FSID) {
            if (!xdr_fsid(xdr, &info->fsid))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_LEASE_TIME) {
            if (!xdr_u_int32_t(xdr, &info->lease_time))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_RDATTR_ERROR) {
            if (!xdr_u_int32_t(xdr, &info->rdattr_error))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_ACL) {
            nfsacl41 *acl = info->acl;
            if (!xdr_array(xdr, (char**)&acl->aces, &acl->count,
                32, sizeof(nfsace4), (xdrproc_t)xdr_nfsace4))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_ACLSUPPORT) {
            if (!xdr_u_int32_t(xdr, &info->aclsupport))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_ARCHIVE) {
            if (!xdr_bool(xdr, &info->archive))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_CANSETTIME) {
            if (!xdr_bool(xdr, &info->cansettime))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_CASE_INSENSITIVE) {
            if (!xdr_bool(xdr, &info->case_insensitive))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_CASE_PRESERVING) {
            if (!xdr_bool(xdr, &info->case_preserving))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_FILEID) {
            if (!xdr_u_hyper(xdr, &info->fileid))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_FS_LOCATIONS) {
            if (!decode_fs_locations4(xdr, info->fs_locations))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_HIDDEN) {
            if (!xdr_bool(xdr, &info->hidden))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_MAXREAD) {
            if (!xdr_u_hyper(xdr, &info->maxread))
                return FALSE;
        }
        if (attrs->attrmask.arr[0] & FATTR4_WORD0_MAXWRITE) {
            if (!xdr_u_hyper(xdr, &info->maxwrite))
                return FALSE;
        }
    }
    if (attrs->attrmask.count >= 2) {
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_MODE) {
            if (!xdr_u_int32_t(xdr, &info->mode))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_NUMLINKS) {
            if (!xdr_u_int32_t(xdr, &info->numlinks))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_OWNER) {
            char *ptr = &info->owner[0];
            uint32_t owner_len;
            if (!xdr_bytes(xdr, &ptr, &owner_len,
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            info->owner[owner_len] = '\0';
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_OWNER_GROUP) {
            char *ptr = &info->owner_group[0];
            uint32_t owner_group_len;
            if (!xdr_bytes(xdr, &ptr, &owner_group_len,
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            info->owner_group[owner_group_len] = '\0';
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_SPACE_AVAIL) {
            if (!xdr_u_hyper(xdr, &info->space_avail))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_SPACE_FREE) {
            if (!xdr_u_hyper(xdr, &info->space_free))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_SPACE_TOTAL) {
            if (!xdr_u_hyper(xdr, &info->space_total))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_SYSTEM) {
            if (!xdr_bool(xdr, &info->system))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_TIME_ACCESS) {
            if (!xdr_nfstime4(xdr, &info->time_access))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_TIME_CREATE) {
            if (!xdr_nfstime4(xdr, &info->time_create))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_TIME_DELTA) {
            if (!xdr_nfstime4(xdr, info->time_delta))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_TIME_MODIFY) {
            if (!xdr_nfstime4(xdr, &info->time_modify))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_DACL) {
            if (!xdr_nfsdacl41(xdr, info->acl))
                return FALSE;
        }
        if (attrs->attrmask.arr[1] & FATTR4_WORD1_FS_LAYOUT_TYPE) {
            if (!xdr_layout_types(xdr, &info->fs_layout_types))
                return FALSE;
        }
    }
    if (attrs->attrmask.count >= 3) {
        if (attrs->attrmask.arr[2] & FATTR4_WORD2_MDSTHRESHOLD) {
            if (!xdr_mdsthreshold(xdr, &info->mdsthreshold))
                return FALSE;
        }
        if (attrs->attrmask.arr[2] & FATTR4_WORD2_SUPPATTR_EXCLCREAT) {
            if (!xdr_bitmap4(xdr, info->suppattr_exclcreat))
                return FALSE;
        }
    }
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {size_t count; int* arr; } ;
struct TYPE_8__ {char* owner; char* owner_group; TYPE_1__ attrmask; int mode_mask; int mode; int time_delta; int time_modify; int time_create; int time_access; int system; int hidden; int archive; int acl; int size; } ;
typedef TYPE_2__ nfs41_file_info ;
struct TYPE_10__ {size_t count; int* arr; } ;
struct TYPE_9__ {int attr_vals_len; TYPE_6__ attrmask; scalar_t__ attr_vals; } ;
typedef TYPE_3__ fattr4 ;
typedef int bool_t ;
typedef int bitmap4 ;
typedef int XDR ;


 int FALSE ;
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
 int NFS4_OPAQUE_LIMIT ;
 int TRUE ;
 int XDR_ENCODE ;
 int ZeroMemory (TYPE_6__*,int) ;
 int eprintf (char*,size_t,scalar_t__,scalar_t__) ;
 int strlen (char*) ;
 int xdr_bool (int *,int *) ;
 int xdr_bytes (int *,char**,size_t*,int ) ;
 int xdr_getpos (int *) ;
 int xdr_nfsacl41 (int *,int ) ;
 int xdr_nfstime4 (int *,int *) ;
 int xdr_settime4 (int *,int *,int ) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;
 int xdrmem_create (int *,char*,int ,int ) ;

__attribute__((used)) static bool_t encode_file_attrs(
    fattr4 *attrs,
    nfs41_file_info *info)
{
    uint32_t i;
    XDR localxdr;

    xdrmem_create(&localxdr, (char *)attrs->attr_vals, NFS4_OPAQUE_LIMIT, XDR_ENCODE);

    attrs->attr_vals_len = 0;
    ZeroMemory(&attrs->attrmask, sizeof(bitmap4));
    attrs->attrmask.count = info->attrmask.count;

    if (info->attrmask.count > 0) {
        if (info->attrmask.arr[0] & FATTR4_WORD0_SIZE) {
            if (!xdr_u_hyper(&localxdr, &info->size))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_SIZE;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_ACL) {
            if (!xdr_nfsacl41(&localxdr, info->acl))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_ACL;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_ARCHIVE) {
            if (!xdr_bool(&localxdr, &info->archive))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_ARCHIVE;
        }
        if (info->attrmask.arr[0] & FATTR4_WORD0_HIDDEN) {
            if (!xdr_bool(&localxdr, &info->hidden))
                return FALSE;
            attrs->attrmask.arr[0] |= FATTR4_WORD0_HIDDEN;
        }
    }
    if (info->attrmask.count > 1) {
        if (info->attrmask.arr[1] & FATTR4_WORD1_MODE) {
            if (!xdr_u_int32_t(&localxdr, &info->mode))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_MODE;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_SYSTEM) {
            if (!xdr_bool(&localxdr, &info->system))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_SYSTEM;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_ACCESS_SET) {
            if (!xdr_settime4(&localxdr, &info->time_access, info->time_delta))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_ACCESS_SET;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_CREATE) {
            if (!xdr_nfstime4(&localxdr, &info->time_create))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_CREATE;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_TIME_MODIFY_SET) {
            if (!xdr_settime4(&localxdr, &info->time_modify, info->time_delta))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_TIME_MODIFY_SET;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_OWNER) {
            char *ptr = &info->owner[0];
            uint32_t owner_len = (uint32_t)strlen(info->owner);
            if (!xdr_bytes(&localxdr, &ptr, &owner_len,
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_OWNER;
        }
        if (info->attrmask.arr[1] & FATTR4_WORD1_OWNER_GROUP) {
            char *ptr = &info->owner_group[0];
            uint32_t owner_group_len = (uint32_t)strlen(info->owner_group);
            if (!xdr_bytes(&localxdr, &ptr, &owner_group_len,
                            NFS4_OPAQUE_LIMIT))
                return FALSE;
            attrs->attrmask.arr[1] |= FATTR4_WORD1_OWNER_GROUP;
        }
    }
    if (info->attrmask.count > 2) {
        if (info->attrmask.arr[2] & FATTR4_WORD2_MODE_SET_MASKED) {
            if (!xdr_u_int32_t(&localxdr, &info->mode))
                return FALSE;
            if (!xdr_u_int32_t(&localxdr, &info->mode_mask))
                return FALSE;
            attrs->attrmask.arr[2] |= FATTR4_WORD2_MODE_SET_MASKED;
        }
    }


    for (i = 0; i < info->attrmask.count; i++)
        if (attrs->attrmask.arr[i] != info->attrmask.arr[i])
            eprintf("encode_file_attrs() attempted to encode extra "
                "attributes in arr[%d]: encoded %d, but wanted %d.\n",
                i, attrs->attrmask.arr[i], info->attrmask.arr[i]);

    attrs->attr_vals_len = xdr_getpos(&localxdr);
    return TRUE;
}

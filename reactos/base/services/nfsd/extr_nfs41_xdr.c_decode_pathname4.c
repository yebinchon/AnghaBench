
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {unsigned short len; scalar_t__ path; } ;
typedef TYPE_1__ nfs41_abs_path ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS41_MAX_PATH_LEN ;
 int TRUE ;
 int xdr_bytes (int *,char**,int*,int) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_pathname4(
    XDR *xdr,
    nfs41_abs_path *path)
{
    char *pos;
    u_int32_t i, count, len, remaining;


    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;

    pos = (char *)path->path;
    remaining = NFS41_MAX_PATH_LEN;


    for (i = 0; i < count; i++) {
        len = remaining;
        if (!xdr_bytes(xdr, (char **)&pos, &len, NFS41_MAX_PATH_LEN))
            return FALSE;
        remaining -= len;
        pos += len;

        if (i < count-1) {
            if (remaining < 1)
                return FALSE;
            *pos++ = '\\';
            remaining--;
        }
    }
    path->len = (unsigned short)(NFS41_MAX_PATH_LEN - remaining);
    return TRUE;
}

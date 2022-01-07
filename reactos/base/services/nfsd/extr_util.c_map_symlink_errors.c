
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_ACCESS_DENIED ;
 int ERROR_BAD_NET_RESP ;
 int ERROR_INVALID_REPARSE_DATA ;
 int ERROR_NOT_A_REPARSE_POINT ;
 int ERROR_NOT_EMPTY ;





 int nfs_to_windows_error (int,int ) ;

int map_symlink_errors(int status)
{
    switch (status) {
    case 131:
    case 130: return ERROR_INVALID_REPARSE_DATA;
    case 128: return ERROR_NOT_A_REPARSE_POINT;
    case 132: return ERROR_ACCESS_DENIED;
    case 129: return ERROR_NOT_EMPTY;
    default: return nfs_to_windows_error(status, ERROR_BAD_NET_RESP);
    }
}

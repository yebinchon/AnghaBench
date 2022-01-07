
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_ACCESS_DENIED ;
 int ERROR_ATOMIC_LOCKS_NOT_SUPPORTED ;
 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_DISK_FULL ;
 int ERROR_FILENAME_EXCED_RANGE ;
 int ERROR_FILE_EXISTS ;
 int ERROR_FILE_INVALID ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_FILE_TOO_LARGE ;
 int ERROR_INVALID_NAME ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_LOCK_FAILED ;
 int ERROR_LOCK_VIOLATION ;
 int ERROR_NETNAME_DELETED ;
 int ERROR_NETWORK_ACCESS_DENIED ;
 int ERROR_NET_WRITE_FAULT ;
 int ERROR_NOT_EMPTY ;
 int ERROR_NOT_LOCKED ;
 int ERROR_NOT_SAME_DEVICE ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SHARING_VIOLATION ;
 int ERROR_TOO_MANY_LINKS ;
 int NO_ERROR ;
 int dprintf (int,char*,int ,int) ;
 int eprintf (char*,int) ;
 int nfs_error_string (int) ;

int nfs_to_windows_error(int status, int default_error)
{

    if (status < 0 || (status > 70 && status < 10001) || status > 10087) {
        eprintf("nfs_to_windows_error called with non-nfs "
            "error code %d; returning the error as is\n", status);
        return status;
    }

    switch (status) {
    case 128: return NO_ERROR;
    case 137: return ERROR_ACCESS_DENIED;
    case 144: return ERROR_FILE_NOT_FOUND;
    case 151: return ERROR_NET_WRITE_FAULT;
    case 162: return ERROR_ACCESS_DENIED;
    case 155: return ERROR_FILE_EXISTS;
    case 129: return ERROR_NOT_SAME_DEVICE;
    case 152: return ERROR_INVALID_PARAMETER;
    case 153: return ERROR_FILE_TOO_LARGE;
    case 142: return ERROR_DISK_FULL;
    case 136: return ERROR_NETWORK_ACCESS_DENIED;
    case 146: return ERROR_TOO_MANY_LINKS;
    case 145: return ERROR_FILENAME_EXCED_RANGE;
    case 134: return ERROR_NETNAME_DELETED;
    case 140: return ERROR_NOT_EMPTY;
    case 156: return ERROR_LOCK_FAILED;
    case 132: return ERROR_BUFFER_OVERFLOW;
    case 149: return ERROR_LOCK_VIOLATION;
    case 135: return ERROR_SHARING_VIOLATION;
    case 147: return ERROR_NOT_LOCKED;
    case 160: return ERROR_NOT_SUPPORTED;
    case 138: return ERROR_ACCESS_DENIED;
    case 148: return ERROR_ATOMIC_LOCKS_NOT_SUPPORTED;

    case 159:
    case 158: return ERROR_INVALID_NAME;

    case 141:
    case 150:
    case 133:
    case 130: return ERROR_INVALID_PARAMETER;

    case 154:
    case 143:
    case 139:
    case 157:
    case 161: return ERROR_FILE_INVALID;

    case 131: return ERROR_ACCESS_DENIED;

    default:
        dprintf(1, "nfs error %s not mapped to windows error; "
            "returning default error %d\n",
            nfs_error_string(status), default_error);
        return default_error;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pnfs_status { ____Placeholder_pnfs_status } pnfs_status ;
const char* pnfs_error_string(enum pnfs_status status)
{
    switch (status) {
    case 128: return "PNFS_SUCCESS";
    case 130: return "PNFS_PENDING";
    case 129: return "PNFS_READ_EOF";
    case 134: return "PNFSERR_NOT_SUPPORTED";
    case 135: return "PNFSERR_NOT_CONNECTED";
    case 138: return "PNFSERR_IO";
    case 133: return "PNFSERR_NO_DEVICE";
    case 132: return "PNFSERR_NO_LAYOUT";
    case 139: return "PNFSERR_INVALID_FH_LIST";
    case 140: return "PNFSERR_INVALID_DS_INDEX";
    case 131: return "PNFSERR_RESOURCES";
    case 136: return "PNFSERR_LAYOUT_RECALLED";
    case 137: return "PNFSERR_LAYOUT_CHANGED";
    default: return "Invalid pnfs status";
    }
}

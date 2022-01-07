
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;






const char* pnfs_iomode_string(enum pnfs_iomode iomode)
{
    switch (iomode) {
    case 129: return "PNFS_IOMODE_READ";
    case 128: return "PNFS_IOMODE_RW";
    case 130: return "PNFS_IOMODE_ANY";
    default: return "Invalid io mode";
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int SYNC_SCAN_NELEM ;
 int SizeOfScanLocations (int ) ;

Size
SyncScanShmemSize(void)
{
 return SizeOfScanLocations(SYNC_SCAN_NELEM);
}

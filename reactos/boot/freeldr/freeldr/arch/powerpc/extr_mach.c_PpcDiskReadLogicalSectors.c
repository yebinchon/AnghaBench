
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int ULONG ;
typedef int PVOID ;
typedef int BOOLEAN ;


 int BootPart ;
 int FALSE ;
 int ofw_open (int ) ;
 int ofw_read (int,int ,int) ;
 scalar_t__ ofw_seek (int,int,int) ;
 int part_handle ;
 int printf (char*,...) ;

BOOLEAN PpcDiskReadLogicalSectors( ULONG DriveNumber, ULONGLONG SectorNumber,
                   ULONG SectorCount, PVOID Buffer ) {
    int rlen = 0;

    if( part_handle == -1 ) {
    part_handle = ofw_open( BootPart );

    if( part_handle == -1 ) {
        printf("Could not open any disk devices we know about\n");
        return FALSE;
    }
    }

    if( part_handle == -1 ) {
    printf("Got partition handle %x\n", part_handle);
    return FALSE;
    }

    if( ofw_seek( part_handle,
           (ULONG)(SectorNumber >> 25),
           (ULONG)((SectorNumber * 512) & 0xffffffff) ) ) {
    printf("Seek to %x failed\n", (ULONG)(SectorNumber * 512));
    return FALSE;
    }

    rlen = ofw_read( part_handle, Buffer, (ULONG)(SectorCount * 512) );
    return rlen > 0;
}

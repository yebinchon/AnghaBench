
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int HwIdle; int HwDetect; int GetMemoryMap; int VideoGetDisplaySize; int VideoSetDisplayMode; int VideoClearScreen; int ConsGetCh; int ConsKbHit; int DiskReadLogicalSectors; int ConsPutChar; } ;


 int BootMain (char*) ;
 char* FrLdrVersionString ;
 TYPE_1__ MachVtbl ;
 int PcPrepHwIdle ;
 int PpcPrepConsGetCh ;
 int PpcPrepConsKbHit ;
 int PpcPrepDiskReadLogicalSectors ;
 int PpcPrepGetMemoryMap ;
 int PpcPrepHwDetect ;
 int PpcPrepPutChar ;
 int PpcPrepVideoClearScreen ;
 int PpcPrepVideoGetDisplaySize ;
 int PpcPrepVideoSetDisplayMode ;
 int ide1_desc ;
 int ide_setup (int *) ;
 int printf (char*,...) ;

void PpcPrepInit()
{
    MachVtbl.ConsPutChar = PpcPrepPutChar;

    printf("Serial on\n");

    ide_setup( &ide1_desc );

    MachVtbl.DiskReadLogicalSectors = PpcPrepDiskReadLogicalSectors;

    MachVtbl.ConsKbHit = PpcPrepConsKbHit;
    MachVtbl.ConsGetCh = PpcPrepConsGetCh;

    MachVtbl.VideoClearScreen = PpcPrepVideoClearScreen;
    MachVtbl.VideoSetDisplayMode = PpcPrepVideoSetDisplayMode;
    MachVtbl.VideoGetDisplaySize = PpcPrepVideoGetDisplaySize;

    MachVtbl.GetMemoryMap = PpcPrepGetMemoryMap;
    MachVtbl.HwDetect = PpcPrepHwDetect;
    MachVtbl.HwIdle = PcPrepHwIdle;

    printf( "FreeLDR version [%s]\n", FrLdrVersionString );

    BootMain( "" );
}

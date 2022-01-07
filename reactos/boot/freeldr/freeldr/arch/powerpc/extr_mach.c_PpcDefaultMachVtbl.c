
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int HwIdle; int HwDetect; int GetTime; int DiskGetCacheableBlockCount; int DiskGetDriveGeometry; int DiskReadLogicalSectors; int GetMemoryMap; int VideoSync; int VideoGetPaletteColor; int VideoSetPaletteColor; int VideoIsPaletteFixed; int VideoCopyOffScreenBufferToVRAM; int VideoPutChar; int VideoHideShowTextCursor; int VideoSetTextCursorPosition; int VideoGetBufferSize; int VideoGetDisplaySize; int VideoSetDisplayMode; int VideoClearScreen; int ConsGetCh; int ConsKbHit; int ConsPutChar; } ;


 TYPE_1__ MachVtbl ;
 int PpcConsGetCh ;
 int PpcConsKbHit ;
 int PpcDiskGetCacheableBlockCount ;
 int PpcDiskGetDriveGeometry ;
 int PpcDiskReadLogicalSectors ;
 int PpcGetMemoryMap ;
 int PpcGetTime ;
 int PpcHwDetect ;
 int PpcHwIdle ;
 int PpcOfwPutChar ;
 int PpcVideoClearScreen ;
 int PpcVideoCopyOffScreenBufferToVRAM ;
 int PpcVideoGetBufferSize ;
 int PpcVideoGetDisplaySize ;
 int PpcVideoGetPaletteColor ;
 int PpcVideoHideShowTextCursor ;
 int PpcVideoIsPaletteFixed ;
 int PpcVideoPutChar ;
 int PpcVideoSetDisplayMode ;
 int PpcVideoSetPaletteColor ;
 int PpcVideoSetTextCursorPosition ;
 int PpcVideoSync ;

void PpcDefaultMachVtbl()
{
    MachVtbl.ConsPutChar = PpcOfwPutChar;
    MachVtbl.ConsKbHit = PpcConsKbHit;
    MachVtbl.ConsGetCh = PpcConsGetCh;
    MachVtbl.VideoClearScreen = PpcVideoClearScreen;
    MachVtbl.VideoSetDisplayMode = PpcVideoSetDisplayMode;
    MachVtbl.VideoGetDisplaySize = PpcVideoGetDisplaySize;
    MachVtbl.VideoGetBufferSize = PpcVideoGetBufferSize;
    MachVtbl.VideoSetTextCursorPosition = PpcVideoSetTextCursorPosition;
    MachVtbl.VideoHideShowTextCursor = PpcVideoHideShowTextCursor;
    MachVtbl.VideoPutChar = PpcVideoPutChar;
    MachVtbl.VideoCopyOffScreenBufferToVRAM =
        PpcVideoCopyOffScreenBufferToVRAM;
    MachVtbl.VideoIsPaletteFixed = PpcVideoIsPaletteFixed;
    MachVtbl.VideoSetPaletteColor = PpcVideoSetPaletteColor;
    MachVtbl.VideoGetPaletteColor = PpcVideoGetPaletteColor;
    MachVtbl.VideoSync = PpcVideoSync;

    MachVtbl.GetMemoryMap = PpcGetMemoryMap;

    MachVtbl.DiskReadLogicalSectors = PpcDiskReadLogicalSectors;
    MachVtbl.DiskGetDriveGeometry = PpcDiskGetDriveGeometry;
    MachVtbl.DiskGetCacheableBlockCount = PpcDiskGetCacheableBlockCount;

    MachVtbl.GetTime = PpcGetTime;

    MachVtbl.HwDetect = PpcHwDetect;
    MachVtbl.HwIdle = PpcHwIdle;
}

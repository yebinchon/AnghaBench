
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int HwIdle; int HwDetect; int InitializeBootDevices; int GetTime; int DiskGetCacheableBlockCount; int DiskGetDriveGeometry; int DiskReadLogicalSectors; int GetFloppyCount; int GetExtendedBIOSData; int GetMemoryMap; int PrepareForReactOS; int Beep; int VideoSync; int VideoGetPaletteColor; int VideoSetPaletteColor; int VideoIsPaletteFixed; int VideoCopyOffScreenBufferToVRAM; int VideoPutChar; int VideoHideShowTextCursor; int VideoSetTextCursorPosition; int VideoGetFontsFromFirmware; int VideoGetBufferSize; int VideoGetDisplaySize; int VideoSetDisplayMode; int VideoClearScreen; int ConsGetCh; int ConsKbHit; int ConsPutChar; } ;


 TYPE_1__ MachVtbl ;
 int PcBeep ;
 int PcConsGetCh ;
 int PcConsKbHit ;
 int PcConsPutChar ;
 int PcDiskGetCacheableBlockCount ;
 int PcDiskGetDriveGeometry ;
 int PcDiskReadLogicalSectors ;
 int PcGetExtendedBIOSData ;
 int PcGetFloppyCount ;
 int PcGetTime ;
 int PcHwDetect ;
 int PcHwIdle ;
 int PcInitializeBootDevices ;
 int PcMemGetMemoryMap ;
 int PcPrepareForReactOS ;
 int PcVideoClearScreen ;
 int PcVideoCopyOffScreenBufferToVRAM ;
 int PcVideoGetBufferSize ;
 int PcVideoGetDisplaySize ;
 int PcVideoGetFontsFromFirmware ;
 int PcVideoGetPaletteColor ;
 int PcVideoHideShowTextCursor ;
 int PcVideoIsPaletteFixed ;
 int PcVideoPutChar ;
 int PcVideoSetDisplayMode ;
 int PcVideoSetPaletteColor ;
 int PcVideoSetTextCursorPosition ;
 int PcVideoSync ;

VOID
PcMachInit(const char *CmdLine)
{

    MachVtbl.ConsPutChar = PcConsPutChar;
    MachVtbl.ConsKbHit = PcConsKbHit;
    MachVtbl.ConsGetCh = PcConsGetCh;
    MachVtbl.VideoClearScreen = PcVideoClearScreen;
    MachVtbl.VideoSetDisplayMode = PcVideoSetDisplayMode;
    MachVtbl.VideoGetDisplaySize = PcVideoGetDisplaySize;
    MachVtbl.VideoGetBufferSize = PcVideoGetBufferSize;
    MachVtbl.VideoGetFontsFromFirmware = PcVideoGetFontsFromFirmware;
    MachVtbl.VideoSetTextCursorPosition = PcVideoSetTextCursorPosition;
    MachVtbl.VideoHideShowTextCursor = PcVideoHideShowTextCursor;
    MachVtbl.VideoPutChar = PcVideoPutChar;
    MachVtbl.VideoCopyOffScreenBufferToVRAM = PcVideoCopyOffScreenBufferToVRAM;
    MachVtbl.VideoIsPaletteFixed = PcVideoIsPaletteFixed;
    MachVtbl.VideoSetPaletteColor = PcVideoSetPaletteColor;
    MachVtbl.VideoGetPaletteColor = PcVideoGetPaletteColor;
    MachVtbl.VideoSync = PcVideoSync;
    MachVtbl.Beep = PcBeep;
    MachVtbl.PrepareForReactOS = PcPrepareForReactOS;
    MachVtbl.GetMemoryMap = PcMemGetMemoryMap;
    MachVtbl.GetExtendedBIOSData = PcGetExtendedBIOSData;
    MachVtbl.GetFloppyCount = PcGetFloppyCount;
    MachVtbl.DiskReadLogicalSectors = PcDiskReadLogicalSectors;
    MachVtbl.DiskGetDriveGeometry = PcDiskGetDriveGeometry;
    MachVtbl.DiskGetCacheableBlockCount = PcDiskGetCacheableBlockCount;
    MachVtbl.GetTime = PcGetTime;
    MachVtbl.InitializeBootDevices = PcInitializeBootDevices;
    MachVtbl.HwDetect = PcHwDetect;
    MachVtbl.HwIdle = PcHwIdle;
}

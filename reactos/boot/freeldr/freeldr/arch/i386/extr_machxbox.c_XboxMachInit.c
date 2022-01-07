
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int HwIdle; int HwDetect; int InitializeBootDevices; int GetTime; int DiskGetCacheableBlockCount; int DiskGetDriveGeometry; int DiskReadLogicalSectors; int GetFloppyCount; int GetExtendedBIOSData; int GetMemoryMap; int PrepareForReactOS; int Beep; int VideoSync; int VideoGetPaletteColor; int VideoSetPaletteColor; int VideoIsPaletteFixed; int VideoCopyOffScreenBufferToVRAM; int VideoPutChar; int VideoHideShowTextCursor; int VideoSetTextCursorPosition; int VideoGetFontsFromFirmware; int VideoGetBufferSize; int VideoGetDisplaySize; int VideoSetDisplayMode; int VideoClearScreen; int ConsGetCh; int ConsKbHit; int ConsPutChar; } ;


 TYPE_1__ MachVtbl ;
 int PcBeep ;
 int PcInitializeBootDevices ;
 int XboxConsGetCh ;
 int XboxConsKbHit ;
 int XboxConsPutChar ;
 int XboxDiskGetCacheableBlockCount ;
 int XboxDiskGetDriveGeometry ;
 int XboxDiskReadLogicalSectors ;
 int XboxGetExtendedBIOSData ;
 int XboxGetFloppyCount ;
 int XboxGetTime ;
 int XboxHwDetect ;
 int XboxHwIdle ;
 int XboxMemGetMemoryMap ;
 int XboxMemInit () ;
 int XboxPrepareForReactOS ;
 int XboxSetLED (char*) ;
 int XboxVideoClearScreen ;
 int XboxVideoCopyOffScreenBufferToVRAM ;
 int XboxVideoGetBufferSize ;
 int XboxVideoGetDisplaySize ;
 int XboxVideoGetFontsFromFirmware ;
 int XboxVideoGetPaletteColor ;
 int XboxVideoHideShowTextCursor ;
 int XboxVideoInit () ;
 int XboxVideoIsPaletteFixed ;
 int XboxVideoPutChar ;
 int XboxVideoSetDisplayMode ;
 int XboxVideoSetPaletteColor ;
 int XboxVideoSetTextCursorPosition ;
 int XboxVideoSync ;

VOID
XboxMachInit(const char *CmdLine)
{

    XboxSetLED("rrrr");


    XboxMemInit();
    XboxVideoInit();


    MachVtbl.ConsPutChar = XboxConsPutChar;
    MachVtbl.ConsKbHit = XboxConsKbHit;
    MachVtbl.ConsGetCh = XboxConsGetCh;
    MachVtbl.VideoClearScreen = XboxVideoClearScreen;
    MachVtbl.VideoSetDisplayMode = XboxVideoSetDisplayMode;
    MachVtbl.VideoGetDisplaySize = XboxVideoGetDisplaySize;
    MachVtbl.VideoGetBufferSize = XboxVideoGetBufferSize;
    MachVtbl.VideoGetFontsFromFirmware = XboxVideoGetFontsFromFirmware;
    MachVtbl.VideoSetTextCursorPosition = XboxVideoSetTextCursorPosition;
    MachVtbl.VideoHideShowTextCursor = XboxVideoHideShowTextCursor;
    MachVtbl.VideoPutChar = XboxVideoPutChar;
    MachVtbl.VideoCopyOffScreenBufferToVRAM = XboxVideoCopyOffScreenBufferToVRAM;
    MachVtbl.VideoIsPaletteFixed = XboxVideoIsPaletteFixed;
    MachVtbl.VideoSetPaletteColor = XboxVideoSetPaletteColor;
    MachVtbl.VideoGetPaletteColor = XboxVideoGetPaletteColor;
    MachVtbl.VideoSync = XboxVideoSync;
    MachVtbl.Beep = PcBeep;
    MachVtbl.PrepareForReactOS = XboxPrepareForReactOS;
    MachVtbl.GetMemoryMap = XboxMemGetMemoryMap;
    MachVtbl.GetExtendedBIOSData = XboxGetExtendedBIOSData;
    MachVtbl.GetFloppyCount = XboxGetFloppyCount;
    MachVtbl.DiskReadLogicalSectors = XboxDiskReadLogicalSectors;
    MachVtbl.DiskGetDriveGeometry = XboxDiskGetDriveGeometry;
    MachVtbl.DiskGetCacheableBlockCount = XboxDiskGetCacheableBlockCount;
    MachVtbl.GetTime = XboxGetTime;
    MachVtbl.InitializeBootDevices = PcInitializeBootDevices;
    MachVtbl.HwDetect = XboxHwDetect;
    MachVtbl.HwIdle = XboxHwIdle;


    XboxSetLED("oooo");
}

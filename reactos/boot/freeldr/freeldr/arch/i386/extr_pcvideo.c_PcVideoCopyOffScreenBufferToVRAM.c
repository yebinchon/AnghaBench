
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int USHORT ;
typedef int ULONG ;
struct TYPE_2__ {int WindowGranularity; int HeightInPixels; int BytesPerScanLine; } ;
typedef char* PVOID ;


 scalar_t__ DisplayMode ;
 int PcVideoGetBufferSize () ;
 int PcVideoSetMemoryBank (int) ;
 int RtlCopyMemory (char*,char*,int) ;
 int UNIMPLEMENTED ;
 scalar_t__ VIDEOTEXT_MEM_ADDRESS ;
 scalar_t__ VIDEOVGA_MEM_ADDRESS ;
 scalar_t__ VesaVideoMode ;
 TYPE_1__ VesaVideoModeInformation ;
 scalar_t__ VideoGraphicsMode ;
 scalar_t__ VideoTextMode ;

VOID
PcVideoCopyOffScreenBufferToVRAM(PVOID Buffer)
{
  USHORT BanksToCopy;
  ULONG BytesInLastBank;
  USHORT CurrentBank;
  ULONG BankSize;




  if (VideoTextMode == DisplayMode)
    {
      RtlCopyMemory((PVOID) VIDEOTEXT_MEM_ADDRESS, Buffer, PcVideoGetBufferSize());
    }

  else if (VideoGraphicsMode == DisplayMode && VesaVideoMode)
    {
      BankSize = VesaVideoModeInformation.WindowGranularity << 10;
      BanksToCopy = (USHORT)((VesaVideoModeInformation.HeightInPixels * VesaVideoModeInformation.BytesPerScanLine) / BankSize);
      BytesInLastBank = (VesaVideoModeInformation.HeightInPixels * VesaVideoModeInformation.BytesPerScanLine) % BankSize;



      for (CurrentBank = 0; CurrentBank < BanksToCopy; CurrentBank++)
        {
          PcVideoSetMemoryBank(CurrentBank);
          RtlCopyMemory((PVOID) VIDEOVGA_MEM_ADDRESS, (char *) Buffer + CurrentBank * BankSize, BankSize);
        }


      PcVideoSetMemoryBank(CurrentBank);
      RtlCopyMemory((PVOID)VIDEOVGA_MEM_ADDRESS, (char *) Buffer + CurrentBank * BankSize, BytesInLastBank);
    }

  else
    {
      UNIMPLEMENTED;
    }
}

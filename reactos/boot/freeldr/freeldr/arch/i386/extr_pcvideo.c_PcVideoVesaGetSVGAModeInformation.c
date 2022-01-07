
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_10__ {int ReservedMaskPosition; int ReservedMaskSize; int BlueMaskPosition; int BlueMaskSize; int GreenMaskPosition; int GreenMaskSize; int RedMaskPosition; int RedMaskSize; int NumberOfImagePanes; int BankSize; int MemoryModel; int NumberOfBanks; int BitsPerPixel; int NumberOfMemoryPlanes; int CharacterHeightInPixels; int CharacterWidthInPixels; int HeightInPixels; int WidthInPixels; int BytesPerScanLine; int WindowPositioningFunction; int WindowBStartSegment; int WindowAStartSegment; int WindowSize; int WindowGranularity; int WindowsAttributesB; int WindowAttributesA; int ModeAttributes; } ;
struct TYPE_8__ {int ax; int di; int es; int cx; } ;
struct TYPE_9__ {TYPE_1__ w; } ;
typedef int SVGA_MODE_INFORMATION ;
typedef TYPE_2__ REGS ;
typedef int PVOID ;
typedef TYPE_3__* PSVGA_MODE_INFORMATION ;
typedef int BOOLEAN ;


 scalar_t__ BIOSCALLBUFFER ;
 int BIOSCALLBUFOFFSET ;
 int BIOSCALLBUFSEGMENT ;
 int FALSE ;
 int Int386 (int,TYPE_2__*,TYPE_2__*) ;
 int RtlCopyMemory (TYPE_3__*,int ,int) ;
 int RtlZeroMemory (int ,int) ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
PcVideoVesaGetSVGAModeInformation(USHORT Mode, PSVGA_MODE_INFORMATION ModeInformation)
{
  REGS Regs;

  RtlZeroMemory((PVOID)BIOSCALLBUFFER, 256);
  Regs.w.ax = 0x4F01;
  Regs.w.cx = Mode;
  Regs.w.es = BIOSCALLBUFSEGMENT;
  Regs.w.di = BIOSCALLBUFOFFSET;
  Int386(0x10, &Regs, &Regs);

  if (Regs.w.ax != 0x004F)
    {
      return FALSE;
    }

  RtlCopyMemory(ModeInformation, (PVOID)BIOSCALLBUFFER, sizeof(SVGA_MODE_INFORMATION));

  TRACE("\n");
  TRACE("BiosVesaGetSVGAModeInformation() mode 0x%x\n", Mode);
  TRACE("ModeAttributes = 0x%x\n", ModeInformation->ModeAttributes);
  TRACE("WindowAttributesA = 0x%x\n", ModeInformation->WindowAttributesA);
  TRACE("WindowAttributesB = 0x%x\n", ModeInformation->WindowsAttributesB);
  TRACE("WindowGranularity = %dKB\n", ModeInformation->WindowGranularity);
  TRACE("WindowSize = %dKB\n", ModeInformation->WindowSize);
  TRACE("WindowAStartSegment = 0x%x\n", ModeInformation->WindowAStartSegment);
  TRACE("WindowBStartSegment = 0x%x\n", ModeInformation->WindowBStartSegment);
  TRACE("WindowPositioningFunction = 0x%x\n", ModeInformation->WindowPositioningFunction);
  TRACE("BytesPerScanLine = %d\n", ModeInformation->BytesPerScanLine);
  TRACE("WidthInPixels = %d\n", ModeInformation->WidthInPixels);
  TRACE("HeightInPixels = %d\n", ModeInformation->HeightInPixels);
  TRACE("CharacterWidthInPixels = %d\n", ModeInformation->CharacterWidthInPixels);
  TRACE("CharacterHeightInPixels = %d\n", ModeInformation->CharacterHeightInPixels);
  TRACE("NumberOfMemoryPlanes = %d\n", ModeInformation->NumberOfMemoryPlanes);
  TRACE("BitsPerPixel = %d\n", ModeInformation->BitsPerPixel);
  TRACE("NumberOfBanks = %d\n", ModeInformation->NumberOfBanks);
  TRACE("MemoryModel = %d\n", ModeInformation->MemoryModel);
  TRACE("BankSize = %d\n", ModeInformation->BankSize);
  TRACE("NumberOfImagePlanes = %d\n", ModeInformation->NumberOfImagePanes);
  TRACE("---VBE v1.2+ ---\n");
  TRACE("RedMaskSize = %d\n", ModeInformation->RedMaskSize);
  TRACE("RedMaskPosition = %d\n", ModeInformation->RedMaskPosition);
  TRACE("GreenMaskSize = %d\n", ModeInformation->GreenMaskSize);
  TRACE("GreenMaskPosition = %d\n", ModeInformation->GreenMaskPosition);
  TRACE("BlueMaskSize = %d\n", ModeInformation->BlueMaskSize);
  TRACE("BlueMaskPosition = %d\n", ModeInformation->BlueMaskPosition);
  TRACE("ReservedMaskSize = %d\n", ModeInformation->ReservedMaskSize);
  TRACE("ReservedMaskPosition = %d\n", ModeInformation->ReservedMaskPosition);
  TRACE("\n");

  return TRUE;
}

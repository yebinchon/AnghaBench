#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_10__ {int /*<<< orphan*/  ReservedMaskPosition; int /*<<< orphan*/  ReservedMaskSize; int /*<<< orphan*/  BlueMaskPosition; int /*<<< orphan*/  BlueMaskSize; int /*<<< orphan*/  GreenMaskPosition; int /*<<< orphan*/  GreenMaskSize; int /*<<< orphan*/  RedMaskPosition; int /*<<< orphan*/  RedMaskSize; int /*<<< orphan*/  NumberOfImagePanes; int /*<<< orphan*/  BankSize; int /*<<< orphan*/  MemoryModel; int /*<<< orphan*/  NumberOfBanks; int /*<<< orphan*/  BitsPerPixel; int /*<<< orphan*/  NumberOfMemoryPlanes; int /*<<< orphan*/  CharacterHeightInPixels; int /*<<< orphan*/  CharacterWidthInPixels; int /*<<< orphan*/  HeightInPixels; int /*<<< orphan*/  WidthInPixels; int /*<<< orphan*/  BytesPerScanLine; int /*<<< orphan*/  WindowPositioningFunction; int /*<<< orphan*/  WindowBStartSegment; int /*<<< orphan*/  WindowAStartSegment; int /*<<< orphan*/  WindowSize; int /*<<< orphan*/  WindowGranularity; int /*<<< orphan*/  WindowsAttributesB; int /*<<< orphan*/  WindowAttributesA; int /*<<< orphan*/  ModeAttributes; } ;
struct TYPE_8__ {int ax; int /*<<< orphan*/  di; int /*<<< orphan*/  es; int /*<<< orphan*/  cx; } ;
struct TYPE_9__ {TYPE_1__ w; } ;
typedef  int /*<<< orphan*/  SVGA_MODE_INFORMATION ;
typedef  TYPE_2__ REGS ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_3__* PSVGA_MODE_INFORMATION ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ BIOSCALLBUFFER ; 
 int /*<<< orphan*/  BIOSCALLBUFOFFSET ; 
 int /*<<< orphan*/  BIOSCALLBUFSEGMENT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN
FUNC4(USHORT Mode, PSVGA_MODE_INFORMATION ModeInformation)
{
  REGS Regs;

  FUNC2((PVOID)BIOSCALLBUFFER, 256);

  /* VESA SuperVGA BIOS - GET SuperVGA MODE INFORMATION
   * AX = 4F01h
   * CX = SuperVGA video mode (see #04082 for bitfields)
   * ES:DI -> 256-byte buffer for mode information (see #00079)
   * Return:
   * AL = 4Fh if function supported
   * AH = status
   * 00h successful
   * ES:DI buffer filled
   * 01h failed
   *
   * Desc: Determine the attributes of the specified video mode
   *
   * Note: While VBE 1.1 and higher will zero out all unused bytes
   * of the buffer, v1.0 did not, so applications that want to be
   * backward compatible should clear the buffer before calling
   */
  Regs.w.ax = 0x4F01;
  Regs.w.cx = Mode;
  Regs.w.es = BIOSCALLBUFSEGMENT;
  Regs.w.di = BIOSCALLBUFOFFSET;
  FUNC0(0x10, &Regs, &Regs);

  if (Regs.w.ax != 0x004F)
    {
      return FALSE;
    }

  FUNC1(ModeInformation, (PVOID)BIOSCALLBUFFER, sizeof(SVGA_MODE_INFORMATION));

  FUNC3("\n");
  FUNC3("BiosVesaGetSVGAModeInformation() mode 0x%x\n", Mode);
  FUNC3("ModeAttributes = 0x%x\n", ModeInformation->ModeAttributes);
  FUNC3("WindowAttributesA = 0x%x\n", ModeInformation->WindowAttributesA);
  FUNC3("WindowAttributesB = 0x%x\n", ModeInformation->WindowsAttributesB);
  FUNC3("WindowGranularity = %dKB\n", ModeInformation->WindowGranularity);
  FUNC3("WindowSize = %dKB\n", ModeInformation->WindowSize);
  FUNC3("WindowAStartSegment = 0x%x\n", ModeInformation->WindowAStartSegment);
  FUNC3("WindowBStartSegment = 0x%x\n", ModeInformation->WindowBStartSegment);
  FUNC3("WindowPositioningFunction = 0x%x\n", ModeInformation->WindowPositioningFunction);
  FUNC3("BytesPerScanLine = %d\n", ModeInformation->BytesPerScanLine);
  FUNC3("WidthInPixels = %d\n", ModeInformation->WidthInPixels);
  FUNC3("HeightInPixels = %d\n", ModeInformation->HeightInPixels);
  FUNC3("CharacterWidthInPixels = %d\n", ModeInformation->CharacterWidthInPixels);
  FUNC3("CharacterHeightInPixels = %d\n", ModeInformation->CharacterHeightInPixels);
  FUNC3("NumberOfMemoryPlanes = %d\n", ModeInformation->NumberOfMemoryPlanes);
  FUNC3("BitsPerPixel = %d\n", ModeInformation->BitsPerPixel);
  FUNC3("NumberOfBanks = %d\n", ModeInformation->NumberOfBanks);
  FUNC3("MemoryModel = %d\n", ModeInformation->MemoryModel);
  FUNC3("BankSize = %d\n", ModeInformation->BankSize);
  FUNC3("NumberOfImagePlanes = %d\n", ModeInformation->NumberOfImagePanes);
  FUNC3("---VBE v1.2+ ---\n");
  FUNC3("RedMaskSize = %d\n", ModeInformation->RedMaskSize);
  FUNC3("RedMaskPosition = %d\n", ModeInformation->RedMaskPosition);
  FUNC3("GreenMaskSize = %d\n", ModeInformation->GreenMaskSize);
  FUNC3("GreenMaskPosition = %d\n", ModeInformation->GreenMaskPosition);
  FUNC3("BlueMaskSize = %d\n", ModeInformation->BlueMaskSize);
  FUNC3("BlueMaskPosition = %d\n", ModeInformation->BlueMaskPosition);
  FUNC3("ReservedMaskSize = %d\n", ModeInformation->ReservedMaskSize);
  FUNC3("ReservedMaskPosition = %d\n", ModeInformation->ReservedMaskPosition);
  FUNC3("\n");

  return TRUE;
}
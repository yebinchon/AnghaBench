
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int es; int bp; } ;
struct TYPE_8__ {int bh; } ;
struct TYPE_7__ {int eax; } ;
struct TYPE_10__ {TYPE_3__ w; TYPE_2__ b; TYPE_1__ d; } ;
typedef TYPE_4__ REGS ;
typedef int* PULONG ;


 int Int386 (int,TYPE_4__*,TYPE_4__*) ;
 int ROM_8x14CharacterFont ;
 int ROM_8x16Font ;
 int ROM_8x8DoubleDotFontHi ;
 int ROM_8x8DoubleDotFontLo ;
 int ROM_AlphaAlternate ;
 int ROM_Alternate9x16Font ;

VOID
PcVideoGetFontsFromFirmware(PULONG RomFontPointers)
{
    REGS BiosRegs;




    BiosRegs.d.eax = 0x1130;
    BiosRegs.b.bh = ROM_8x14CharacterFont;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[0] = BiosRegs.w.es << 4 | BiosRegs.w.bp;

    BiosRegs.b.bh = ROM_8x8DoubleDotFontLo;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[1] = BiosRegs.w.es << 16 | BiosRegs.w.bp;

    BiosRegs.b.bh = ROM_8x8DoubleDotFontHi;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[2] = BiosRegs.w.es << 16 | BiosRegs.w.bp;

    BiosRegs.b.bh = ROM_AlphaAlternate;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[3] = BiosRegs.w.es << 16 | BiosRegs.w.bp;

    BiosRegs.b.bh = ROM_8x16Font;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[4] = BiosRegs.w.es << 16 | BiosRegs.w.bp;

    BiosRegs.b.bh = ROM_Alternate9x16Font;
    Int386(0x10, &BiosRegs, &BiosRegs);
    RomFontPointers[5] = BiosRegs.w.es << 16 | BiosRegs.w.bp;
}

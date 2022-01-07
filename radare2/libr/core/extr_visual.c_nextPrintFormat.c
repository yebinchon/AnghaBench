
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int printidx; } ;
typedef TYPE_1__ RCore ;


 size_t PRINT_3_FORMATS ;
 size_t PRINT_4_FORMATS ;
 size_t PRINT_5_FORMATS ;
 size_t PRINT_HEX_FORMATS ;
 size_t R_ABS (int ) ;





 int current3format ;
 int current4format ;
 int current5format ;
 size_t currentFormat ;
 int disMode ;
 int hexMode ;
 int * print3Formats ;
 int * print4Formats ;
 int * print5Formats ;
 int * printHexFormats ;
 int * printfmtSingle ;
 int r_core_visual_applyDisMode (TYPE_1__*,int ) ;
 int r_core_visual_applyHexMode (TYPE_1__*,int ) ;
 int rotateAsmemu (TYPE_1__*) ;

__attribute__((used)) static void nextPrintFormat(RCore *core) {
 switch (core->printidx) {
 case 128:
  r_core_visual_applyHexMode (core, ++hexMode);
  printfmtSingle[0] = printHexFormats[R_ABS(hexMode) % PRINT_HEX_FORMATS];
  break;
 case 129:
  r_core_visual_applyDisMode (core, ++disMode);
  printfmtSingle[1] = rotateAsmemu (core);
  break;
 case 131:
  r_core_visual_applyDisMode (core, ++disMode);
  printfmtSingle[1] = rotateAsmemu (core);
  current3format++;
  currentFormat = R_ABS (current3format) % PRINT_3_FORMATS;
  printfmtSingle[2] = print3Formats[currentFormat];
  break;
 case 130:
  current4format++;
  currentFormat = R_ABS (current4format) % PRINT_4_FORMATS;
  printfmtSingle[3] = print4Formats[currentFormat];
  break;
 case 132:
  current5format++;
  currentFormat = R_ABS (current5format) % PRINT_5_FORMATS;
  printfmtSingle[4] = print5Formats[currentFormat];
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int convutf8 (int,int,int) ;
 int utf8word_to_unicode (int ) ;

__attribute__((used)) static uint32
conv_utf8_to_18030(uint32 code)
{
 uint32 ucs = utf8word_to_unicode(code);





 if (ucs >= 0x0452 && ucs <= 0x200F) return gb_unlinear(ucs - 0x0452 + gb_linear(0x8130D330));
 if (ucs >= 0x2643 && ucs <= 0x2E80) return gb_unlinear(ucs - 0x2643 + gb_linear(0x8137A839));
 if (ucs >= 0x361B && ucs <= 0x3917) return gb_unlinear(ucs - 0x361B + gb_linear(0x8230A633));
 if (ucs >= 0x3CE1 && ucs <= 0x4055) return gb_unlinear(ucs - 0x3CE1 + gb_linear(0x8231D438));
 if (ucs >= 0x4160 && ucs <= 0x4336) return gb_unlinear(ucs - 0x4160 + gb_linear(0x8232C937));
 if (ucs >= 0x44D7 && ucs <= 0x464B) return gb_unlinear(ucs - 0x44D7 + gb_linear(0x8233A339));
 if (ucs >= 0x478E && ucs <= 0x4946) return gb_unlinear(ucs - 0x478E + gb_linear(0x8233E838));
 if (ucs >= 0x49B8 && ucs <= 0x4C76) return gb_unlinear(ucs - 0x49B8 + gb_linear(0x8234A131));
 if (ucs >= 0x9FA6 && ucs <= 0xD7FF) return gb_unlinear(ucs - 0x9FA6 + gb_linear(0x82358F33));
 if (ucs >= 0xE865 && ucs <= 0xF92B) return gb_unlinear(ucs - 0xE865 + gb_linear(0x8336D030));
 if (ucs >= 0xFA2A && ucs <= 0xFE2F) return gb_unlinear(ucs - 0xFA2A + gb_linear(0x84309C38));
 if (ucs >= 0xFFE6 && ucs <= 0xFFFF) return gb_unlinear(ucs - 0xFFE6 + gb_linear(0x8431A234));
 if (ucs >= 0x10000 && ucs <= 0x10FFFF) return gb_unlinear(ucs - 0x10000 + gb_linear(0x90308130));

 return 0;
}

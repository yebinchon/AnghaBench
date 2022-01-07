
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int conv18030 (int,int,int) ;

__attribute__((used)) static uint32
conv_18030_to_utf8(uint32 code)
{




 if (code >= 0x8130D330 && code <= 0x8136A531) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8130D330) + 0x0452);
 if (code >= 0x8137A839 && code <= 0x8138FD38) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8137A839) + 0x2643);
 if (code >= 0x8230A633 && code <= 0x8230F237) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8230A633) + 0x361B);
 if (code >= 0x8231D438 && code <= 0x8232AF32) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8231D438) + 0x3CE1);
 if (code >= 0x8232C937 && code <= 0x8232F837) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8232C937) + 0x4160);
 if (code >= 0x8233A339 && code <= 0x8233C931) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8233A339) + 0x44D7);
 if (code >= 0x8233E838 && code <= 0x82349638) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8233E838) + 0x478E);
 if (code >= 0x8234A131 && code <= 0x8234E733) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8234A131) + 0x49B8);
 if (code >= 0x82358F33 && code <= 0x8336C738) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x82358F33) + 0x9FA6);
 if (code >= 0x8336D030 && code <= 0x84308534) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8336D030) + 0xE865);
 if (code >= 0x84309C38 && code <= 0x84318537) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x84309C38) + 0xFA2A);
 if (code >= 0x8431A234 && code <= 0x8431A439) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x8431A234) + 0xFFE6);
 if (code >= 0x90308130 && code <= 0xE3329A35) return unicode_to_utf8word(gb_linear(code) - gb_linear(0x90308130) + 0x10000);

 return 0;
}

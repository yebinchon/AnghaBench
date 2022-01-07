
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline wchar_t latin9_translit(wchar_t c)
{

 switch (c) {
 case 0x20AC: return 0xA4;
 case 0x0160: return 0xA6;
 case 0x0161: return 0xA8;
 case 0x017D: return 0xB4;
 case 0x017E: return 0xB8;
 case 0x0152: return 0xBC;
 case 0x0153: return 0xBD;
 case 0x0178: return 0xBE;
 default: return 0xFFFD;
 }
}

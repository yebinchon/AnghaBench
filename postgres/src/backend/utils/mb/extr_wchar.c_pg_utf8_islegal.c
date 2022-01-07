
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool
pg_utf8_islegal(const unsigned char *source, int length)
{
 unsigned char a;

 switch (length)
 {
  default:

   return 0;
  case 4:
   a = source[3];
   if (a < 0x80 || a > 0xBF)
    return 0;

  case 3:
   a = source[2];
   if (a < 0x80 || a > 0xBF)
    return 0;

  case 2:
   a = source[1];
   switch (*source)
   {
    case 0xE0:
     if (a < 0xA0 || a > 0xBF)
      return 0;
     break;
    case 0xED:
     if (a < 0x80 || a > 0x9F)
      return 0;
     break;
    case 0xF0:
     if (a < 0x90 || a > 0xBF)
      return 0;
     break;
    case 0xF4:
     if (a < 0x80 || a > 0x8F)
      return 0;
     break;
    default:
     if (a < 0x80 || a > 0xBF)
      return 0;
     break;
   }

  case 1:
   a = *source;
   if (a >= 0x80 && a < 0xC2)
    return 0;
   if (a > 0xF4)
    return 0;
   break;
 }
 return 1;
}

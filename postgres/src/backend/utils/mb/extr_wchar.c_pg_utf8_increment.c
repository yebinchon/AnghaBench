
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
pg_utf8_increment(unsigned char *charptr, int length)
{
 unsigned char a;
 unsigned char limit;

 switch (length)
 {
  default:

   return 0;
  case 4:
   a = charptr[3];
   if (a < 0xBF)
   {
    charptr[3]++;
    break;
   }

  case 3:
   a = charptr[2];
   if (a < 0xBF)
   {
    charptr[2]++;
    break;
   }

  case 2:
   a = charptr[1];
   switch (*charptr)
   {
    case 0xED:
     limit = 0x9F;
     break;
    case 0xF4:
     limit = 0x8F;
     break;
    default:
     limit = 0xBF;
     break;
   }
   if (a < limit)
   {
    charptr[1]++;
    break;
   }

  case 1:
   a = *charptr;
   if (a == 0x7F || a == 0xDF || a == 0xEF || a == 0xF4)
    return 0;
   charptr[0]++;
   break;
 }

 return 1;
}

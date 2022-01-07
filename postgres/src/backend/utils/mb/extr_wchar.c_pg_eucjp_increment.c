
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (unsigned char) ;



__attribute__((used)) static bool
pg_eucjp_increment(unsigned char *charptr, int length)
{
 unsigned char c1,
    c2;
 int i;

 c1 = *charptr;

 switch (c1)
 {
  case 129:
   if (length != 2)
    return 0;

   c2 = charptr[1];

   if (c2 >= 0xdf)
    charptr[0] = charptr[1] = 0xa1;
   else if (c2 < 0xa1)
    charptr[1] = 0xa1;
   else
    charptr[1]++;
   break;

  case 128:
   if (length != 3)
    return 0;

   for (i = 2; i > 0; i--)
   {
    c2 = charptr[i];
    if (c2 < 0xa1)
    {
     charptr[i] = 0xa1;
     return 1;
    }
    else if (c2 < 0xfe)
    {
     charptr[i]++;
     return 1;
    }
   }


   return 0;

  default:
   if (IS_HIGHBIT_SET(c1))
   {
    if (length != 2)
     return 0;

    for (i = 1; i >= 0; i--)
    {
     c2 = charptr[i];
     if (c2 < 0xa1)
     {
      charptr[i] = 0xa1;
      return 1;
     }
     else if (c2 < 0xfe)
     {
      charptr[i]++;
      return 1;
     }
    }


    return 0;
   }
   else
   {
    if (c1 > 0x7e)
     return 0;
    (*charptr)++;
   }
   break;
 }

 return 1;
}

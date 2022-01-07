
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_EUC_RANGE_VALID (unsigned char) ;
 int IS_HIGHBIT_SET (unsigned char) ;



__attribute__((used)) static int
pg_euctw_verifier(const unsigned char *s, int len)
{
 int l;
 unsigned char c1,
    c2;

 c1 = *s++;

 switch (c1)
 {
  case 129:
   l = 4;
   if (l > len)
    return -1;
   c2 = *s++;
   if (c2 < 0xa1 || c2 > 0xa7)
    return -1;
   c2 = *s++;
   if (!IS_EUC_RANGE_VALID(c2))
    return -1;
   c2 = *s++;
   if (!IS_EUC_RANGE_VALID(c2))
    return -1;
   break;

  case 128:
   return -1;

  default:
   if (IS_HIGHBIT_SET(c1))
   {
    l = 2;
    if (l > len)
     return -1;

    c2 = *s++;
    if (!IS_EUC_RANGE_VALID(c2))
     return -1;
   }
   else

   {
    l = 1;
   }
   break;
 }
 return l;
}

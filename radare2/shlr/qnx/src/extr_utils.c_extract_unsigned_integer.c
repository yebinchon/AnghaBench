
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ULONGEST ;
typedef int LONGEST ;


 int eprintf (char*,int) ;

ULONGEST
extract_unsigned_integer (const ut8 *addr, int len, int be) {
 ULONGEST retval;
 const ut8 *p;
 const ut8 *startaddr = addr;
 const ut8 *endaddr = startaddr + len;

 if (len > (int)sizeof(LONGEST))
  eprintf (
   "This operation is not available on integers of more than %d byte(s)\n",
   (int)sizeof(LONGEST));



 retval = 0;
 if (be) {
  for (p = startaddr; p < endaddr; ++p)
   retval = (retval << 8) | *p;
 } else {
  for (p = endaddr - 1; p >= startaddr; --p)
   retval = (retval << 8) | *p;
 }
 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
ascii_to_bin(char ch)
{
 signed char sch = ch;
 int retval;

 retval = sch - '.';
 if (sch >= 'A') {
  retval = sch - ('A' - 12);
  if (sch >= 'a')
   retval = sch - ('a' - 38);
 }
 retval &= 0x3f;

 return(retval);
}

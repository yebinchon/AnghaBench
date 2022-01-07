
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline bool
is_all_ff(u8 *buf, int len)
{
 while (len--)
  if (buf[len] != 0xff)
   return 0;

 return 1;
}

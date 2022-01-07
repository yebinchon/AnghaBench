
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32 ;


 long old_salt ;
 long saltbits ;

__attribute__((used)) static void
setup_salt(long salt)
{
 uint32 obit,
    saltbit;
 int i;

 if (salt == old_salt)
  return;
 old_salt = salt;

 saltbits = 0L;
 saltbit = 1;
 obit = 0x800000;
 for (i = 0; i < 24; i++)
 {
  if (salt & saltbit)
   saltbits |= obit;
  saltbit <<= 1;
  obit >>= 1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8 ;


 int PXE_PGP_WRONG_KEY ;
 int px_debug (char*) ;

__attribute__((used)) static int
control_cksum(uint8 *msg, int msglen)
{
 int i;
 unsigned my_cksum,
    got_cksum;

 if (msglen < 3)
  return PXE_PGP_WRONG_KEY;

 my_cksum = 0;
 for (i = 1; i < msglen - 2; i++)
  my_cksum += msg[i];
 my_cksum &= 0xFFFF;
 got_cksum = ((unsigned) (msg[msglen - 2]) << 8) + msg[msglen - 1];
 if (my_cksum != got_cksum)
 {
  px_debug("pubenc cksum failed");
  return PXE_PGP_WRONG_KEY;
 }
 return 0;
}

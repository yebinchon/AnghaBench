
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;


 int PXE_PGP_CORRUPT_DATA ;
 int pullf_read (int *,int,int **) ;
 int px_debug (char*) ;

int
pgp_expect_packet_end(PullFilter *pkt)
{
 int res;
 uint8 *tmp;

 res = pullf_read(pkt, 32 * 1024, &tmp);
 if (res > 0)
 {
  px_debug("pgp_expect_packet_end: got data");
  return PXE_PGP_CORRUPT_DATA;
 }
 return res;
}

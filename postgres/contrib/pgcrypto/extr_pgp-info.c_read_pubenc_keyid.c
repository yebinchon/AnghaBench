
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;


 int GETBYTE (int *,int) ;
 int pgp_skip_packet (int *) ;
 int pullf_read_fixed (int *,int,int*) ;

__attribute__((used)) static int
read_pubenc_keyid(PullFilter *pkt, uint8 *keyid_buf)
{
 uint8 ver;
 int res;

 GETBYTE(pkt, ver);
 if (ver != 3)
  return -1;

 res = pullf_read_fixed(pkt, 8, keyid_buf);
 if (res < 0)
  return res;

 return pgp_skip_packet(pkt);
}

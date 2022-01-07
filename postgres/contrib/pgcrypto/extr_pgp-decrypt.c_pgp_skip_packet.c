
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;


 int pullf_read (int *,int,int **) ;

int
pgp_skip_packet(PullFilter *pkt)
{
 int res = 1;
 uint8 *tmp;

 while (res > 0)
  res = pullf_read(pkt, 32 * 1024, &tmp);
 return res;
}

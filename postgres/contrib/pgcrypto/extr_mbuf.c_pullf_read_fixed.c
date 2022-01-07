
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;


 int PXE_PGP_CORRUPT_DATA ;
 int memcpy (int *,int *,int) ;
 int pullf_read_max (int *,int,int **,int *) ;
 int px_debug (char*,int,int) ;

int
pullf_read_fixed(PullFilter *src, int len, uint8 *dst)
{
 int res;
 uint8 *p;

 res = pullf_read_max(src, len, &p, dst);
 if (res < 0)
  return res;
 if (res != len)
 {
  px_debug("pullf_read_fixed: need=%d got=%d", len, res);
  return PXE_PGP_CORRUPT_DATA;
 }
 if (p != dst)
  memcpy(dst, p, len);
 return 0;
}

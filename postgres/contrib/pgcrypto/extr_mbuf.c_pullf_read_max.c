
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;


 int memcpy (int *,int *,int) ;
 int pullf_read (int *,int,int **) ;
 int px_memset (int *,int ,int) ;

int
pullf_read_max(PullFilter *pf, int len, uint8 **data_p, uint8 *tmpbuf)
{
 int res,
    total;
 uint8 *tmp;

 res = pullf_read(pf, len, data_p);
 if (res <= 0 || res == len)
  return res;


 memcpy(tmpbuf, *data_p, res);
 *data_p = tmpbuf;
 len -= res;
 total = res;

 while (len > 0)
 {
  res = pullf_read(pf, len, &tmp);
  if (res < 0)
  {

   px_memset(tmpbuf, 0, total);
   return res;
  }
  if (res == 0)
   break;
  memcpy(tmpbuf + total, tmp, res);
  total += res;
  len -= res;
 }
 return total;
}

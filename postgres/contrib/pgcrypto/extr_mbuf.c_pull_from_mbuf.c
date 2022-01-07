
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;
typedef int MBuf ;


 int mbuf_grab (int *,int,int **) ;

__attribute__((used)) static int
pull_from_mbuf(void *arg, PullFilter *src, int len,
      uint8 **data_p, uint8 *buf, int buflen)
{
 MBuf *mbuf = arg;

 return mbuf_grab(mbuf, len, data_p);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PushFilter ;
typedef int MBuf ;


 int mbuf_append (int *,int const*,int) ;

__attribute__((used)) static int
push_into_mbuf(PushFilter *next, void *arg, const uint8 *data, int len)
{
 int res = 0;
 MBuf *mbuf = arg;

 if (len > 0)
  res = mbuf_append(mbuf, data, len);
 return res < 0 ? res : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct PktData {int type; int len; } ;
typedef int PullFilter ;


 int PKT_CONTEXT ;
 int PKT_NORMAL ;
 int parse_new_len (int *,int*) ;
 int pullf_read (int *,int,int **) ;

__attribute__((used)) static int
pktreader_pull(void *priv, PullFilter *src, int len,
      uint8 **data_p, uint8 *buf, int buflen)
{
 int res;
 struct PktData *pkt = priv;


 if (pkt->type == PKT_CONTEXT)
  return pullf_read(src, len, data_p);

 while (pkt->len == 0)
 {

  if (pkt->type == PKT_NORMAL)
   return 0;


  res = parse_new_len(src, &pkt->len);
  if (res < 0)
   return res;
  pkt->type = res;
 }

 if (len > pkt->len)
  len = pkt->len;

 res = pullf_read(src, len, data_p);
 if (res > 0)
  pkt->len -= res;

 return res;
}

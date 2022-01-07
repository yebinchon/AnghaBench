
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PktData {int type; int len; } ;
typedef int PullFilter ;
typedef int PGP_Context ;


 int pktreader_filter ;
 int pullf_create (int **,int *,struct PktData*,int *) ;
 struct PktData* px_alloc (int) ;
 int px_free (struct PktData*) ;

int
pgp_create_pkt_reader(PullFilter **pf_p, PullFilter *src, int len,
       int pkttype, PGP_Context *ctx)
{
 int res;
 struct PktData *pkt = px_alloc(sizeof(*pkt));

 pkt->type = pkttype;
 pkt->len = len;
 res = pullf_create(pf_p, &pktreader_filter, pkt, src);
 if (res < 0)
  px_free(pkt);
 return res;
}

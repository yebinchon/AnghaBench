
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PktData {int dummy; } ;


 int px_free (struct PktData*) ;
 int px_memset (struct PktData*,int ,int) ;

__attribute__((used)) static void
pktreader_free(void *priv)
{
 struct PktData *pkt = priv;

 px_memset(pkt, 0, sizeof(*pkt));
 px_free(pkt);
}

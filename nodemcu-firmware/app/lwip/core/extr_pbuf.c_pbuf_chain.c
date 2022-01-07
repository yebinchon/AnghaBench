
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;


 int LWIP_DBG_TRACE ;
 int LWIP_DEBUGF (int,char*) ;
 int PBUF_DEBUG ;
 int pbuf_cat (struct pbuf*,struct pbuf*) ;
 int pbuf_ref (struct pbuf*) ;

void
pbuf_chain(struct pbuf *h, struct pbuf *t)
{
  pbuf_cat(h, t);

  pbuf_ref(t);
  LWIP_DEBUGF(PBUF_DEBUG | LWIP_DBG_TRACE, ("pbuf_chain: %p references %p\n", (void *)h, (void *)t));
}

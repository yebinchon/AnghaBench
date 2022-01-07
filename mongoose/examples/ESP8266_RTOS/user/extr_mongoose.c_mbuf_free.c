
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int * buf; } ;


 int MBUF_FREE (int *) ;
 int mbuf_init (struct mbuf*,int ) ;

void mbuf_free(struct mbuf *mbuf) {
  if (mbuf->buf != ((void*)0)) {
    MBUF_FREE(mbuf->buf);
    mbuf_init(mbuf, 0);
  }
}

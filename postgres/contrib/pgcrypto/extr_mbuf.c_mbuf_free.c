
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* data; struct TYPE_6__* buf_end; scalar_t__ own_data; } ;
typedef TYPE_1__ MBuf ;


 int px_free (TYPE_1__*) ;
 int px_memset (TYPE_1__*,int ,TYPE_1__*) ;

int
mbuf_free(MBuf *mbuf)
{
 if (mbuf->own_data)
 {
  px_memset(mbuf->data, 0, mbuf->buf_end - mbuf->data);
  px_free(mbuf->data);
 }
 px_free(mbuf);
 return 0;
}

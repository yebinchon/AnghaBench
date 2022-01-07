
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {size_t len; size_t maxlen; int * buf; } ;


 int * mem_alloc (size_t) ;
 int mem_free (int *,size_t) ;
 int memcpy (int *,void const*,size_t) ;

struct netbuf *
__rpc_set_netbuf(struct netbuf *nb, const void *ptr, size_t len)
{
 if (nb->len != len) {
  if (nb->len)
   mem_free(nb->buf, nb->len);
  nb->buf = mem_alloc(len);
  if (nb->buf == ((void*)0))
   return ((void*)0);

  nb->maxlen = nb->len = len;
 }
 memcpy(nb->buf, ptr, len);
 return nb;
}

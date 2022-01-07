
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {struct netbuf* buf; } ;


 int free (struct netbuf*) ;

void freenetbuf(struct netbuf *nbuf)
{
 if (nbuf) {
  free(nbuf->buf);
  free(nbuf);
 }
}

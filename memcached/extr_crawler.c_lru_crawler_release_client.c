
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; int * cbuf; int * c; } ;
typedef TYPE_1__ crawler_client_t ;


 int bipbuf_free (int *) ;
 int redispatch_conn (int *) ;

__attribute__((used)) static void lru_crawler_release_client(crawler_client_t *c) {

    redispatch_conn(c->c);
    c->c = ((void*)0);
    c->cbuf = ((void*)0);
    bipbuf_free(c->buf);
    c->buf = ((void*)0);
}

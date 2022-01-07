
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* cbuf; int buf; int * c; } ;
typedef TYPE_1__ crawler_client_t ;


 int LRU_CRAWLER_WRITEBUF ;
 void* bipbuf_request (int ,int ) ;
 int lru_crawler_poll (TYPE_1__*) ;

__attribute__((used)) static int lru_crawler_client_getbuf(crawler_client_t *c) {
    void *buf = ((void*)0);
    if (c->c == ((void*)0)) return -1;

    while ((buf = bipbuf_request(c->buf, LRU_CRAWLER_WRITEBUF)) == ((void*)0)) {

        int ret = lru_crawler_poll(c);
        if (ret < 0) return ret;
    }

    c->cbuf = buf;
    return 0;
}

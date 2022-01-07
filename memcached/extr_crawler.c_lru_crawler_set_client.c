
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sfd; int * buf; int * c; } ;
struct TYPE_4__ {TYPE_2__ c; } ;
typedef TYPE_1__ crawler_module_t ;
typedef TYPE_2__ crawler_client_t ;


 int * bipbuf_new (int) ;

__attribute__((used)) static int lru_crawler_set_client(crawler_module_t *cm, void *c, const int sfd) {
    crawler_client_t *crawlc = &cm->c;
    if (crawlc->c != ((void*)0)) {
        return -1;
    }
    crawlc->c = c;
    crawlc->sfd = sfd;

    crawlc->buf = bipbuf_new(1024 * 128);
    if (crawlc->buf == ((void*)0)) {
        return -2;
    }
    return 0;
}

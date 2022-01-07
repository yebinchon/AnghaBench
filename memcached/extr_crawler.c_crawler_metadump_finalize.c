
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf; int cbuf; int * c; } ;
struct TYPE_4__ {TYPE_2__ c; } ;
typedef TYPE_1__ crawler_module_t ;


 int bipbuf_push (int ,int) ;
 int lru_crawler_client_getbuf (TYPE_2__*) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static void crawler_metadump_finalize(crawler_module_t *cm) {
    if (cm->c.c != ((void*)0)) {

        lru_crawler_client_getbuf(&cm->c);
        memcpy(cm->c.cbuf, "END\r\n", 5);
        bipbuf_push(cm->c.buf, 5);
    }
}

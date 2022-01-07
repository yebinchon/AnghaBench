
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int strbuf; } ;
struct TYPE_3__ {int sz; scalar_t__ addr; } ;
struct config {TYPE_2__ parser; struct config* error_message; TYPE_1__ mapped; } ;


 int free (struct config*) ;
 int lwan_strbuf_free (int *) ;
 int munmap (scalar_t__,int ) ;

void config_close(struct config *config)
{
    if (!config)
        return;


    if (config->mapped.addr)
        munmap(config->mapped.addr, config->mapped.sz);


    free(config->error_message);
    lwan_strbuf_free(&config->parser.strbuf);
    free(config);
}

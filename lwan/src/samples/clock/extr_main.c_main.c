
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_url_map {char* prefix; int member_1; struct index* data; int handler; } ;
struct lwan {int dummy; } ;
struct index {char* title; char* variant; int width; } ;


 int LWAN_HANDLER_REF (int ) ;
 int REDIRECT (char*) ;
 int blocks ;
 int clock ;
 int dali ;
 int lwan_init (struct lwan*) ;
 int lwan_main_loop (struct lwan*) ;
 int lwan_set_url_map (struct lwan*,struct lwan_url_map const*) ;
 int lwan_shutdown (struct lwan*) ;
 int templated_index ;

int main(void)
{
    struct index sample_clock = {
        .title = "Lwan Sample Clock",
        .variant = "clock",
        .width = 200,
    };
    struct index dali_clock = {
        .title = "Lwan Dali Clock",
        .variant = "dali",
        .width = 320,
    };
    struct index blocks_clock = {
        .title = "Lwan Blocks Clock",
        .variant = "blocks",
        .width = 320,
    };
    const struct lwan_url_map default_map[] = {
        {
            .prefix = "/clock.gif",
            .handler = LWAN_HANDLER_REF(clock),
        },
        {
            .prefix = "/dali.gif",
            .handler = LWAN_HANDLER_REF(dali),
        },
        {
            .prefix = "/blocks.gif",
            .handler = LWAN_HANDLER_REF(blocks),
        },
        {
            .prefix = "/clock",
            .handler = LWAN_HANDLER_REF(templated_index),
            .data = &sample_clock,
        },
        {
            .prefix = "/dali",
            .handler = LWAN_HANDLER_REF(templated_index),
            .data = &dali_clock,
        },
        {
            .prefix = "/blocks",
            .handler = LWAN_HANDLER_REF(templated_index),
            .data = &blocks_clock,
        },
        {
            .prefix = "/",
            REDIRECT("/clock"),
        },
        {},
    };
    struct lwan l;

    lwan_init(&l);

    lwan_set_url_map(&l, default_map);
    lwan_main_loop(&l);

    lwan_shutdown(&l);

    return 0;
}

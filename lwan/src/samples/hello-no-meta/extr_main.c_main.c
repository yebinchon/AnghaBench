
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_url_map {char* prefix; int handler; } ;
struct lwan {int dummy; } ;


 int hello_world ;
 int lwan_init (struct lwan*) ;
 int lwan_main_loop (struct lwan*) ;
 int lwan_set_url_map (struct lwan*,struct lwan_url_map const*) ;
 int lwan_shutdown (struct lwan*) ;

int main(void)
{
    const struct lwan_url_map default_map[] = {
        {.prefix = "/", .handler = hello_world},
        {.prefix = ((void*)0)}
    };
    struct lwan l;

    lwan_init(&l);

    lwan_set_url_map(&l, default_map);
    lwan_main_loop(&l);

    lwan_shutdown(&l);

    return 0;
}

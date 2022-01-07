
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan {int dummy; } ;


 int EXIT_SUCCESS ;
 int lwan_init (struct lwan*) ;
 int lwan_main_loop (struct lwan*) ;
 int lwan_shutdown (struct lwan*) ;

int
main()
{
    struct lwan l;

    lwan_init(&l);
    lwan_main_loop(&l);
    lwan_shutdown(&l);

    return EXIT_SUCCESS;
}

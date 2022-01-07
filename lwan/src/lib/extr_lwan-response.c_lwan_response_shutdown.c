
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan {int dummy; } ;


 int assert (int ) ;
 int error_template ;
 int lwan_status_debug (char*) ;
 int lwan_tpl_free (int ) ;

void lwan_response_shutdown(struct lwan *l __attribute__((unused)))
{
    lwan_status_debug("Shutting down response");
    assert(error_template);
    lwan_tpl_free(error_template);
}

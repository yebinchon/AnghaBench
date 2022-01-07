
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_request {int dummy; } ;


 int lwan_request_get_query_params (struct lwan_request*) ;
 char const* value_lookup (int ,char const*) ;

const char *lwan_request_get_query_param(struct lwan_request *request,
                                         const char *key)
{
    return value_lookup(lwan_request_get_query_params(request), key);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* value; } ;
struct lwan_request {TYPE_2__* conn; TYPE_1__ url; } ;
struct ip_info {int dummy; } ;
struct TYPE_4__ {int coro; } ;


 scalar_t__ UNLIKELY (int) ;
 int cache ;
 scalar_t__ cache_coro_get_and_ref_entry (int ,int ,char const*) ;

__attribute__((used)) static struct ip_info *internal_query(struct lwan_request *request,
                                      const char *ip_address)
{
    const char *query;

    if (request->url.len == 0)
        query = ip_address;
    else if (request->url.len < 7)
        query = ((void*)0);
    else
        query = request->url.value;
    if (UNLIKELY(!query))
        return ((void*)0);

    return (struct ip_info *)cache_coro_get_and_ref_entry(
        cache, request->conn->coro, query);
}

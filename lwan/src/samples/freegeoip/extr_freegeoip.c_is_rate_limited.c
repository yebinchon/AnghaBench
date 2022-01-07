
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_limit {int base; int queries; } ;


 scalar_t__ ATOMIC_AAF (int *,int) ;
 scalar_t__ QUERIES_PER_HOUR ;
 int cache_entry_unref (int ,int *) ;
 scalar_t__ cache_get_and_ref_entry (int ,char const*,int*) ;
 int query_limit ;

__attribute__((used)) static bool is_rate_limited(const char *ip_address)
{
    bool limited;
    int error;
    struct query_limit *limit;

    limit = (struct query_limit *)cache_get_and_ref_entry(query_limit,
                                                          ip_address, &error);
    if (!limit)
        return 1;

    limited = ATOMIC_AAF(&limit->queries, 1) > QUERIES_PER_HOUR;
    cache_entry_unref(query_limit, &limit->base);

    return limited;
}

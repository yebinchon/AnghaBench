
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_query {int dummy; } ;


 int heap_free (struct wined3d_query*) ;

__attribute__((used)) static void wined3d_timestamp_disjoint_query_ops_destroy(struct wined3d_query *query)
{
    heap_free(query);
}

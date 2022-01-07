
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_query {int dummy; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct wined3d_query*) ;

__attribute__((used)) static void wined3d_statistics_query_ops_destroy(struct wined3d_query *query)
{
    HeapFree(GetProcessHeap(), 0, query);
}

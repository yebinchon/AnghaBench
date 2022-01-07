
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_query {int dummy; } ;
struct wined3d_occlusion_query {scalar_t__ context; } ;


 int context_free_occlusion_query (struct wined3d_occlusion_query*) ;
 int heap_free (struct wined3d_occlusion_query*) ;
 struct wined3d_occlusion_query* wined3d_occlusion_query_from_query (struct wined3d_query*) ;

__attribute__((used)) static void wined3d_occlusion_query_ops_destroy(struct wined3d_query *query)
{
    struct wined3d_occlusion_query *oq = wined3d_occlusion_query_from_query(query);

    if (oq->context)
        context_free_occlusion_query(oq);
    heap_free(oq);
}

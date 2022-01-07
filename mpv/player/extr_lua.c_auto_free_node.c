
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_node ;


 int node_get_alloc (int *) ;
 int talloc_steal (void*,int ) ;

__attribute__((used)) static void auto_free_node(void *tmp, mpv_node *node)
{
    talloc_steal(tmp, node_get_alloc(node));
}

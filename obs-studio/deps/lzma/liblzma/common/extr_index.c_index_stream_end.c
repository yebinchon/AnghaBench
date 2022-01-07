
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lzma_allocator ;
struct TYPE_2__ {int groups; } ;
typedef TYPE_1__ index_stream ;


 int index_tree_end (int *,int *,int *) ;

__attribute__((used)) static void
index_stream_end(void *node, lzma_allocator *allocator)
{
 index_stream *s = node;
 index_tree_end(&s->groups, allocator, ((void*)0));
 return;
}

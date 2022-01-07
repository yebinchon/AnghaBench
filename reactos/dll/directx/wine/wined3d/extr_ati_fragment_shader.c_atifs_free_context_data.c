
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int fragment_pipe_data; } ;


 int heap_free (int ) ;

__attribute__((used)) static void atifs_free_context_data(struct wined3d_context *context)
{
    heap_free(context->fragment_pipe_data);
}

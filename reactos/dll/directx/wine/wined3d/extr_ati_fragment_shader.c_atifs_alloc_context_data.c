
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {struct atifs_context_private_data* fragment_pipe_data; } ;
struct atifs_context_private_data {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 struct atifs_context_private_data* heap_alloc_zero (int) ;

__attribute__((used)) static BOOL atifs_alloc_context_data(struct wined3d_context *context)
{
    struct atifs_context_private_data *priv;

    if (!(priv = heap_alloc_zero(sizeof(*priv))))
        return FALSE;
    context->fragment_pipe_data = priv;
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int fbo_destroy_list; } ;
struct fbo_entry {int entry; } ;


 int list_add_head (int *,int *) ;
 int list_remove (int *) ;

__attribute__((used)) static void context_queue_fbo_entry_destruction(struct wined3d_context *context, struct fbo_entry *entry)
{
    list_remove(&entry->entry);
    list_add_head(&context->fbo_destroy_list, &entry->entry);
}

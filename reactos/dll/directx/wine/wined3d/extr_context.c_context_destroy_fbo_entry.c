
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int fbo_entry_count; } ;
struct fbo_entry {int entry; scalar_t__ id; } ;


 int TRACE (char*,scalar_t__) ;
 int context_destroy_fbo (struct wined3d_context*,scalar_t__) ;
 int heap_free (struct fbo_entry*) ;
 int list_remove (int *) ;

__attribute__((used)) static void context_destroy_fbo_entry(struct wined3d_context *context, struct fbo_entry *entry)
{
    if (entry->id)
    {
        TRACE("Destroy FBO %u.\n", entry->id);
        context_destroy_fbo(context, entry->id);
    }
    --context->fbo_entry_count;
    list_remove(&entry->entry);
    heap_free(entry);
}

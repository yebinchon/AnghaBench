
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log_root {int num_buffers; int reload_counter; struct mp_log_buffer_entry** buffers; } ;
struct mp_log_buffer_entry {struct mp_log_root* root; } ;
struct mp_log_buffer {struct mp_log_root* root; } ;


 int MP_TARRAY_REMOVE_AT (struct mp_log_buffer_entry**,int,int) ;
 int abort () ;
 int atomic_fetch_add (int *,int) ;
 int mp_msg_lock ;
 struct mp_log_buffer_entry* mp_msg_log_buffer_read (struct mp_log_buffer_entry*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (struct mp_log_buffer_entry*) ;

void mp_msg_log_buffer_destroy(struct mp_log_buffer *buffer)
{
    if (!buffer)
        return;

    pthread_mutex_lock(&mp_msg_lock);

    struct mp_log_root *root = buffer->root;
    for (int n = 0; n < root->num_buffers; n++) {
        if (root->buffers[n] == buffer) {
            MP_TARRAY_REMOVE_AT(root->buffers, root->num_buffers, n);
            goto found;
        }
    }

    abort();

found:

    while (1) {
        struct mp_log_buffer_entry *e = mp_msg_log_buffer_read(buffer);
        if (!e)
            break;
        talloc_free(e);
    }
    talloc_free(buffer);

    atomic_fetch_add(&root->reload_counter, 1);
    pthread_mutex_unlock(&mp_msg_lock);
}

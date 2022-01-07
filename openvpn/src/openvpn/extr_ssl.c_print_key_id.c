
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {struct key_state** key_scan; } ;
struct key_state {int session_id_remote; int key_id; int state; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 int KEY_SCAN_SIZE ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,int,int ,int ,int ) ;
 int session_id_print (int *,struct gc_arena*) ;
 int state_name (int ) ;

__attribute__((used)) static const char *
print_key_id(struct tls_multi *multi, struct gc_arena *gc)
{
    int i;
    struct buffer out = alloc_buf_gc(256, gc);

    for (i = 0; i < KEY_SCAN_SIZE; ++i)
    {
        struct key_state *ks = multi->key_scan[i];
        buf_printf(&out, " [key#%d state=%s id=%d sid=%s]", i,
                   state_name(ks->state), ks->key_id,
                   session_id_print(&ks->session_id_remote, gc));
    }

    return BSTR(&out);
}

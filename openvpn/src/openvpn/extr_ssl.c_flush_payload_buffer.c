
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_state {int paybuf; int ks_ssl; } ;
struct buffer {int len; int data; } ;


 struct buffer* buffer_list_peek (int ) ;
 int buffer_list_pop (int ) ;
 int key_state_write_plaintext_const (int *,int ,int ) ;

__attribute__((used)) static void
flush_payload_buffer(struct key_state *ks)
{
    struct buffer *b;

    while ((b = buffer_list_peek(ks->paybuf)))
    {
        key_state_write_plaintext_const(&ks->ks_ssl, b->data, b->len);
        buffer_list_pop(ks->paybuf);
    }
}

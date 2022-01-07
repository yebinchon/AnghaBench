
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int packet_id; int key_ctx_bi; } ;
struct key_state {TYPE_1__ crypto_options; scalar_t__ key_src; scalar_t__ rec_ack; scalar_t__ rec_reliable; scalar_t__ send_reliable; int paybuf; int ack_write_buf; int plaintext_write_buf; int plaintext_read_buf; int ks_ssl; int state; } ;


 int S_UNDEF ;
 int buffer_list_free (int ) ;
 int free (scalar_t__) ;
 int free_buf (int *) ;
 int free_key_ctx_bi (int *) ;
 int key_state_rm_auth_control_file (struct key_state*) ;
 int key_state_ssl_free (int *) ;
 int packet_id_free (int *) ;
 int reliable_free (scalar_t__) ;
 int secure_memzero (struct key_state*,int) ;

__attribute__((used)) static void
key_state_free(struct key_state *ks, bool clear)
{
    ks->state = S_UNDEF;

    key_state_ssl_free(&ks->ks_ssl);

    free_key_ctx_bi(&ks->crypto_options.key_ctx_bi);
    free_buf(&ks->plaintext_read_buf);
    free_buf(&ks->plaintext_write_buf);
    free_buf(&ks->ack_write_buf);
    buffer_list_free(ks->paybuf);

    if (ks->send_reliable)
    {
        reliable_free(ks->send_reliable);
        free(ks->send_reliable);
    }

    if (ks->rec_reliable)
    {
        reliable_free(ks->rec_reliable);
        free(ks->rec_reliable);
    }

    if (ks->rec_ack)
    {
        free(ks->rec_ack);
    }

    if (ks->key_src)
    {
        free(ks->key_src);
    }

    packet_id_free(&ks->crypto_options.packet_id);





    if (clear)
    {
        secure_memzero(ks, sizeof(*ks));
    }
}

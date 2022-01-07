
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_ctx_bi; int packet_id; } ;
struct tls_wrap_ctx {int work; int tls_crypt_v2_metadata; TYPE_1__ opt; scalar_t__ cleanup_key_ctx; } ;


 int free_buf (int *) ;
 int free_key_ctx_bi (int *) ;
 int packet_id_free (int *) ;
 scalar_t__ packet_id_initialized (int *) ;

__attribute__((used)) static inline void
tls_wrap_free(struct tls_wrap_ctx *tls_wrap)
{
    if (packet_id_initialized(&tls_wrap->opt.packet_id))
    {
        packet_id_free(&tls_wrap->opt.packet_id);
    }

    if (tls_wrap->cleanup_key_ctx)
    {
        free_key_ctx_bi(&tls_wrap->opt.key_ctx_bi);
    }

    free_buf(&tls_wrap->tls_crypt_v2_metadata);
    free_buf(&tls_wrap->work);
}

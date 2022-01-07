
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int text_mode; int convert_crlf; int unicode_mode; int use_sess_key; int disable_mdc; int compress_level; int compress_algo; int s2k_digest_algo; int s2k_count; int s2k_mode; int s2k_cipher_algo; int cipher_algo; } ;
typedef TYPE_1__ PGP_Context ;


 int def_cipher_algo ;
 int def_compress_algo ;
 int def_compress_level ;
 int def_convert_crlf ;
 int def_disable_mdc ;
 int def_s2k_cipher_algo ;
 int def_s2k_count ;
 int def_s2k_digest_algo ;
 int def_s2k_mode ;
 int def_text_mode ;
 int def_unicode_mode ;
 int def_use_sess_key ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* px_alloc (int) ;

int
pgp_init(PGP_Context **ctx_p)
{
 PGP_Context *ctx;

 ctx = px_alloc(sizeof *ctx);
 memset(ctx, 0, sizeof *ctx);

 ctx->cipher_algo = def_cipher_algo;
 ctx->s2k_cipher_algo = def_s2k_cipher_algo;
 ctx->s2k_mode = def_s2k_mode;
 ctx->s2k_count = def_s2k_count;
 ctx->s2k_digest_algo = def_s2k_digest_algo;
 ctx->compress_algo = def_compress_algo;
 ctx->compress_level = def_compress_level;
 ctx->disable_mdc = def_disable_mdc;
 ctx->use_sess_key = def_use_sess_key;
 ctx->unicode_mode = def_unicode_mode;
 ctx->convert_crlf = def_convert_crlf;
 ctx->text_mode = def_text_mode;

 *ctx_p = ctx;
 return 0;
}

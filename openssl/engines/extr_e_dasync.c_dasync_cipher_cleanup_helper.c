
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasync_pipeline_ctx {int inner_cipher_data; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int EVP_CIPHER_impl_ctx_size (int const*) ;
 int OPENSSL_clear_free (int ,int ) ;

__attribute__((used)) static int dasync_cipher_cleanup_helper(EVP_CIPHER_CTX *ctx,
                                        const EVP_CIPHER *cipher)
{
    struct dasync_pipeline_ctx *pipe_ctx =
        (struct dasync_pipeline_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);

    OPENSSL_clear_free(pipe_ctx->inner_cipher_data,
                       EVP_CIPHER_impl_ctx_size(cipher));

    return 1;
}

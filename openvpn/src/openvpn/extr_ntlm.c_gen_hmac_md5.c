
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int md_kt_t ;
typedef int hmac_ctx_t ;


 int hmac_ctx_cleanup (int *) ;
 int hmac_ctx_final (int *,int *) ;
 int hmac_ctx_free (int *) ;
 int hmac_ctx_init (int *,int const*,int,int const*) ;
 int * hmac_ctx_new () ;
 int hmac_ctx_update (int *,int const*,int) ;
 int * md_kt_get (char*) ;

__attribute__((used)) static void
gen_hmac_md5(const uint8_t *data, int data_len, const uint8_t *key, int key_len,
             uint8_t *result)
{
    const md_kt_t *md5_kt = md_kt_get("MD5");
    hmac_ctx_t *hmac_ctx = hmac_ctx_new();

    hmac_ctx_init(hmac_ctx, key, key_len, md5_kt);
    hmac_ctx_update(hmac_ctx, data, data_len);
    hmac_ctx_final(hmac_ctx, result);
    hmac_ctx_cleanup(hmac_ctx);
    hmac_ctx_free(hmac_ctx);
}

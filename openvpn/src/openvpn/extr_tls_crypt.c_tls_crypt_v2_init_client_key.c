
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_ctx_bi {int dummy; } ;
struct key2 {int keys; } ;
struct buffer {int dummy; } ;
typedef int key2 ;


 int M_FATAL ;
 scalar_t__ TLS_CRYPT_V2_CLIENT_KEY_LEN ;
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ;
 struct buffer alloc_buf (scalar_t__) ;
 int buf_read (struct buffer*,int *,int) ;
 int msg (int ,char*) ;
 int read_pem_key_file (struct buffer*,int ,char const*,char const*) ;
 int secure_memzero (struct key2*,int) ;
 int tls_crypt_v2_cli_pem_name ;
 int tls_crypt_v2_load_client_key (struct key_ctx_bi*,struct key2*,int) ;

void
tls_crypt_v2_init_client_key(struct key_ctx_bi *key, struct buffer *wkc_buf,
                             const char *key_file, const char *key_inline)
{
    struct buffer client_key = alloc_buf(TLS_CRYPT_V2_CLIENT_KEY_LEN
                                         + TLS_CRYPT_V2_MAX_WKC_LEN);

    if (!read_pem_key_file(&client_key, tls_crypt_v2_cli_pem_name,
                           key_file, key_inline))
    {
        msg(M_FATAL, "ERROR: invalid tls-crypt-v2 client key format");
    }

    struct key2 key2;
    if (!buf_read(&client_key, &key2.keys, sizeof(key2.keys)))
    {
        msg(M_FATAL, "ERROR: not enough data in tls-crypt-v2 client key");
    }

    tls_crypt_v2_load_client_key(key, &key2, 0);
    secure_memzero(&key2, sizeof(key2));

    *wkc_buf = client_key;
}

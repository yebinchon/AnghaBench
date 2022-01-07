
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int timestamp ;
typedef int test_client_key2 ;
struct key_ctx_bi {int dummy; } ;
struct key_ctx {int member_0; } ;
struct key2 {int member_0; int * keys; } ;
struct gc_arena {int dummy; } ;
struct buffer {int member_0; } ;
typedef int int64_t ;
typedef int client_key ;


 int ASSERT (int ) ;
 int BCAP (struct buffer*) ;
 char* BPTR (struct buffer*) ;
 int D_GENKEY ;
 char* INLINE_FILE_TAG ;
 int M_FATAL ;
 int TLS_CRYPT_METADATA_TYPE_TIMESTAMP ;
 int TLS_CRYPT_METADATA_TYPE_USER ;
 scalar_t__ TLS_CRYPT_V2_CLIENT_KEY_LEN ;
 scalar_t__ TLS_CRYPT_V2_MAX_B64_METADATA_LEN ;
 scalar_t__ TLS_CRYPT_V2_MAX_METADATA_LEN ;
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_clear (struct buffer*) ;
 int buf_inc_len (struct buffer*,int) ;
 int buf_write (struct buffer*,int *,int) ;
 int buffer_write_file (char const*,struct buffer*) ;
 int crypto_pem_encode (int ,struct buffer*,struct buffer*,struct gc_arena*) ;
 int free_buf (struct buffer*) ;
 int free_key_ctx (struct key_ctx*) ;
 int free_key_ctx_bi (struct key_ctx_bi*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int htonll (int ) ;
 int msg (int ,char*,...) ;
 scalar_t__ now ;
 int openvpn_base64_decode (char const*,char*,int ) ;
 int printf (char*,char*) ;
 int rand_bytes (void*,int) ;
 int secure_memzero (struct key2*,int) ;
 scalar_t__ streq (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 int tls_crypt_v2_cli_pem_name ;
 int tls_crypt_v2_init_client_key (struct key_ctx_bi*,struct buffer*,char const*,char const*) ;
 int tls_crypt_v2_init_server_key (struct key_ctx*,int,char const*,char const*) ;
 int tls_crypt_v2_unwrap_client_key (struct key2*,struct buffer*,struct buffer,struct key_ctx*) ;
 int tls_crypt_v2_wrap_client_key (struct buffer*,struct key2*,struct buffer*,struct key_ctx*,struct gc_arena*) ;

void
tls_crypt_v2_write_client_key_file(const char *filename,
                                   const char *b64_metadata,
                                   const char *server_key_file,
                                   const char *server_key_inline)
{
    struct gc_arena gc = gc_new();
    struct key_ctx server_key = { 0 };
    struct buffer client_key_pem = { 0 };
    struct buffer dst = alloc_buf_gc(TLS_CRYPT_V2_CLIENT_KEY_LEN
                                     + TLS_CRYPT_V2_MAX_WKC_LEN, &gc);
    struct key2 client_key = { 2 };

    if (!rand_bytes((void *)client_key.keys, sizeof(client_key.keys)))
    {
        msg(M_FATAL, "ERROR: could not generate random key");
        goto cleanup;
    }
    ASSERT(buf_write(&dst, client_key.keys, sizeof(client_key.keys)));

    struct buffer metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN, &gc);
    if (b64_metadata)
    {
        if (TLS_CRYPT_V2_MAX_B64_METADATA_LEN < strlen(b64_metadata))
        {
            msg(M_FATAL,
                "ERROR: metadata too long (%d bytes, max %u bytes)",
                (int)strlen(b64_metadata), TLS_CRYPT_V2_MAX_B64_METADATA_LEN);
        }
        ASSERT(buf_write(&metadata, &TLS_CRYPT_METADATA_TYPE_USER, 1));
        int decoded_len = openvpn_base64_decode(b64_metadata, BPTR(&metadata),
                                                BCAP(&metadata));
        if (decoded_len < 0)
        {
            msg(M_FATAL, "ERROR: failed to base64 decode provided metadata");
            goto cleanup;
        }
        ASSERT(buf_inc_len(&metadata, decoded_len));
    }
    else
    {
        int64_t timestamp = htonll((uint64_t)now);
        ASSERT(buf_write(&metadata, &TLS_CRYPT_METADATA_TYPE_TIMESTAMP, 1));
        ASSERT(buf_write(&metadata, &timestamp, sizeof(timestamp)));
    }

    tls_crypt_v2_init_server_key(&server_key, 1, server_key_file,
                                 server_key_inline);
    if (!tls_crypt_v2_wrap_client_key(&dst, &client_key, &metadata, &server_key,
                                      &gc))
    {
        msg(M_FATAL, "ERROR: could not wrap generated client key");
        goto cleanup;
    }


    if (!crypto_pem_encode(tls_crypt_v2_cli_pem_name, &client_key_pem, &dst,
                           &gc))
    {
        msg(M_FATAL, "ERROR: could not PEM-encode client key");
        goto cleanup;
    }

    const char *client_filename = filename;
    const char *client_inline = ((void*)0);

    if (!filename || streq(filename, ""))
    {
        printf("%s\n", BPTR(&client_key_pem));
        client_filename = INLINE_FILE_TAG;
        client_inline = (const char *)BPTR(&client_key_pem);
    }
    else if (!buffer_write_file(filename, &client_key_pem))
    {
        msg(M_FATAL, "ERROR: could not write client key file");
        goto cleanup;
    }


    struct key_ctx_bi test_client_key;
    struct buffer test_wrapped_client_key;
    msg(D_GENKEY, "Testing client-side key loading...");
    tls_crypt_v2_init_client_key(&test_client_key, &test_wrapped_client_key,
                                 client_filename, client_inline);
    free_key_ctx_bi(&test_client_key);


    struct buffer test_metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                               &gc);
    struct key2 test_client_key2 = { 0 };
    free_key_ctx(&server_key);
    tls_crypt_v2_init_server_key(&server_key, 0, server_key_file,
                                 server_key_inline);
    msg(D_GENKEY, "Testing server-side key loading...");
    ASSERT(tls_crypt_v2_unwrap_client_key(&test_client_key2, &test_metadata,
                                          test_wrapped_client_key, &server_key));
    secure_memzero(&test_client_key2, sizeof(test_client_key2));
    free_buf(&test_wrapped_client_key);

cleanup:
    secure_memzero(&client_key, sizeof(client_key));
    free_key_ctx(&server_key);
    buf_clear(&client_key_pem);
    buf_clear(&dst);

    gc_free(&gc);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  timestamp ;
typedef  int /*<<< orphan*/  test_client_key2 ;
struct key_ctx_bi {int dummy; } ;
struct key_ctx {int /*<<< orphan*/  member_0; } ;
struct key2 {int member_0; int /*<<< orphan*/ * keys; } ;
struct gc_arena {int dummy; } ;
struct buffer {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  client_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 char* FUNC2 (struct buffer*) ; 
 int /*<<< orphan*/  D_GENKEY ; 
 char* INLINE_FILE_TAG ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  TLS_CRYPT_METADATA_TYPE_TIMESTAMP ; 
 int /*<<< orphan*/  TLS_CRYPT_METADATA_TYPE_USER ; 
 scalar_t__ TLS_CRYPT_V2_CLIENT_KEY_LEN ; 
 scalar_t__ TLS_CRYPT_V2_MAX_B64_METADATA_LEN ; 
 scalar_t__ TLS_CRYPT_V2_MAX_METADATA_LEN ; 
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ; 
 struct buffer FUNC3 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer*,struct buffer*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct key_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct key_ctx_bi*) ; 
 int /*<<< orphan*/  FUNC12 (struct gc_arena*) ; 
 struct gc_arena FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ now ; 
 int FUNC16 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct key2*,int) ; 
 scalar_t__ FUNC20 (char const*,char*) ; 
 scalar_t__ FUNC21 (char const*) ; 
 int /*<<< orphan*/  tls_crypt_v2_cli_pem_name ; 
 int /*<<< orphan*/  FUNC22 (struct key_ctx_bi*,struct buffer*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC23 (struct key_ctx*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (struct key2*,struct buffer*,struct buffer,struct key_ctx*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer*,struct key2*,struct buffer*,struct key_ctx*,struct gc_arena*) ; 

void
FUNC26(const char *filename,
                                   const char *b64_metadata,
                                   const char *server_key_file,
                                   const char *server_key_inline)
{
    struct gc_arena gc = FUNC13();
    struct key_ctx server_key = { 0 };
    struct buffer client_key_pem = { 0 };
    struct buffer dst = FUNC3(TLS_CRYPT_V2_CLIENT_KEY_LEN
                                     + TLS_CRYPT_V2_MAX_WKC_LEN, &gc);
    struct key2 client_key = { 2 };

    if (!FUNC18((void *)client_key.keys, sizeof(client_key.keys)))
    {
        FUNC15(M_FATAL, "ERROR: could not generate random key");
        goto cleanup;
    }
    FUNC0(FUNC6(&dst, client_key.keys, sizeof(client_key.keys)));

    struct buffer metadata = FUNC3(TLS_CRYPT_V2_MAX_METADATA_LEN, &gc);
    if (b64_metadata)
    {
        if (TLS_CRYPT_V2_MAX_B64_METADATA_LEN < FUNC21(b64_metadata))
        {
            FUNC15(M_FATAL,
                "ERROR: metadata too long (%d bytes, max %u bytes)",
                (int)FUNC21(b64_metadata), TLS_CRYPT_V2_MAX_B64_METADATA_LEN);
        }
        FUNC0(FUNC6(&metadata, &TLS_CRYPT_METADATA_TYPE_USER, 1));
        int decoded_len = FUNC16(b64_metadata, FUNC2(&metadata),
                                                FUNC1(&metadata));
        if (decoded_len < 0)
        {
            FUNC15(M_FATAL, "ERROR: failed to base64 decode provided metadata");
            goto cleanup;
        }
        FUNC0(FUNC5(&metadata, decoded_len));
    }
    else
    {
        int64_t timestamp = FUNC14((uint64_t)now);
        FUNC0(FUNC6(&metadata, &TLS_CRYPT_METADATA_TYPE_TIMESTAMP, 1));
        FUNC0(FUNC6(&metadata, &timestamp, sizeof(timestamp)));
    }

    FUNC23(&server_key, true, server_key_file,
                                 server_key_inline);
    if (!FUNC25(&dst, &client_key, &metadata, &server_key,
                                      &gc))
    {
        FUNC15(M_FATAL, "ERROR: could not wrap generated client key");
        goto cleanup;
    }

    /* PEM-encode Kc || WKc */
    if (!FUNC8(tls_crypt_v2_cli_pem_name, &client_key_pem, &dst,
                           &gc))
    {
        FUNC15(M_FATAL, "ERROR: could not PEM-encode client key");
        goto cleanup;
    }

    const char *client_filename = filename;
    const char *client_inline = NULL;

    if (!filename || FUNC20(filename, ""))
    {
        FUNC17("%s\n", FUNC2(&client_key_pem));
        client_filename = INLINE_FILE_TAG;
        client_inline = (const char *)FUNC2(&client_key_pem);
    }
    else if (!FUNC7(filename, &client_key_pem))
    {
        FUNC15(M_FATAL, "ERROR: could not write client key file");
        goto cleanup;
    }

    /* Sanity check: load client key (as "client") */
    struct key_ctx_bi test_client_key;
    struct buffer test_wrapped_client_key;
    FUNC15(D_GENKEY, "Testing client-side key loading...");
    FUNC22(&test_client_key, &test_wrapped_client_key,
                                 client_filename, client_inline);
    FUNC11(&test_client_key);

    /* Sanity check: unwrap and load client key (as "server") */
    struct buffer test_metadata = FUNC3(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                               &gc);
    struct key2 test_client_key2 = { 0 };
    FUNC10(&server_key);
    FUNC23(&server_key, false, server_key_file,
                                 server_key_inline);
    FUNC15(D_GENKEY, "Testing server-side key loading...");
    FUNC0(FUNC24(&test_client_key2, &test_metadata,
                                          test_wrapped_client_key, &server_key));
    FUNC19(&test_client_key2, sizeof(test_client_key2));
    FUNC9(&test_wrapped_client_key);

cleanup:
    FUNC19(&client_key, sizeof(client_key));
    FUNC10(&server_key);
    FUNC4(&client_key_pem);
    FUNC4(&dst);

    FUNC12(&gc);
}
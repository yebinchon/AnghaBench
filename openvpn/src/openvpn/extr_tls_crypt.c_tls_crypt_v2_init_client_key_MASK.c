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
struct key_ctx_bi {int dummy; } ;
struct key2 {int /*<<< orphan*/  keys; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  key2 ;

/* Variables and functions */
 int /*<<< orphan*/  M_FATAL ; 
 scalar_t__ TLS_CRYPT_V2_CLIENT_KEY_LEN ; 
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ; 
 struct buffer FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct key2*,int) ; 
 int /*<<< orphan*/  tls_crypt_v2_cli_pem_name ; 
 int /*<<< orphan*/  FUNC5 (struct key_ctx_bi*,struct key2*,int) ; 

void
FUNC6(struct key_ctx_bi *key, struct buffer *wkc_buf,
                             const char *key_file, const char *key_inline)
{
    struct buffer client_key = FUNC0(TLS_CRYPT_V2_CLIENT_KEY_LEN
                                         + TLS_CRYPT_V2_MAX_WKC_LEN);

    if (!FUNC3(&client_key, tls_crypt_v2_cli_pem_name,
                           key_file, key_inline))
    {
        FUNC2(M_FATAL, "ERROR: invalid tls-crypt-v2 client key format");
    }

    struct key2 key2;
    if (!FUNC1(&client_key, &key2.keys, sizeof(key2.keys)))
    {
        FUNC2(M_FATAL, "ERROR: not enough data in tls-crypt-v2 client key");
    }

    FUNC5(key, &key2, false);
    FUNC4(&key2, sizeof(key2));

    *wkc_buf = client_key;
}
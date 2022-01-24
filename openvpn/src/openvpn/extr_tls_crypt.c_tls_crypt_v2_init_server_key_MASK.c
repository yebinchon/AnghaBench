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
struct key_type {int /*<<< orphan*/  digest; int /*<<< orphan*/  cipher; } ;
struct key_ctx {int dummy; } ;
struct key {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  srv_key ;

/* Variables and functions */
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct key_ctx*,struct key*,struct key_type*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,int) ; 
 struct key_type FUNC5 () ; 
 int /*<<< orphan*/  tls_crypt_v2_srv_pem_name ; 

void
FUNC6(struct key_ctx *key_ctx, bool encrypt,
                             const char *key_file, const char *key_inline)
{
    struct key srv_key;
    struct buffer srv_key_buf;

    FUNC0(&srv_key_buf, (void *)&srv_key, sizeof(srv_key));
    if (!FUNC3(&srv_key_buf, tls_crypt_v2_srv_pem_name,
                           key_file, key_inline))
    {
        FUNC2(M_FATAL, "ERROR: invalid tls-crypt-v2 server key format");
    }

    struct key_type kt = FUNC5();
    if (!kt.cipher || !kt.digest)
    {
        FUNC2(M_FATAL, "ERROR: --tls-crypt-v2 not supported");
    }
    FUNC1(key_ctx, &srv_key, &kt, encrypt, "tls-crypt-v2 server key");
    FUNC4(&srv_key, sizeof(srv_key));
}
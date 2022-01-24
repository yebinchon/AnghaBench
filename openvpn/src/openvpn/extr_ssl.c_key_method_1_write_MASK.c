#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tls_session {TYPE_3__* opt; struct key_state* key; } ;
struct TYPE_4__ {int /*<<< orphan*/  encrypt; } ;
struct TYPE_5__ {TYPE_1__ key_ctx_bi; } ;
struct key_state {TYPE_2__ crypto_options; } ;
struct key {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_6__ {int key_method; int /*<<< orphan*/  key_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_TLS_ERRORS ; 
 size_t KS_PRIMARY ; 
 int /*<<< orphan*/  OPENVPN_OP_ENCRYPT ; 
 int FUNC1 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (struct tls_session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*,int) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*,int /*<<< orphan*/ *,struct buffer*) ; 

__attribute__((used)) static bool
FUNC11(struct buffer *buf, struct tls_session *session)
{
    struct key key;
    struct key_state *ks = &session->key[KS_PRIMARY];      /* primary key */

    FUNC0(session->opt->key_method == 1);
    FUNC0(FUNC1(buf, 0));

    FUNC4(&key, &session->opt->key_type);
    if (!FUNC3(&key, &session->opt->key_type))
    {
        FUNC7(D_TLS_ERRORS, "TLS Error: Bad encrypting key generated");
        return false;
    }

    if (!FUNC10(&key, &session->opt->key_type, buf))
    {
        FUNC7(D_TLS_ERRORS, "TLS Error: write_key failed");
        return false;
    }

    FUNC5(&ks->crypto_options.key_ctx_bi.encrypt, &key,
                 &session->opt->key_type, OPENVPN_OP_ENCRYPT,
                 "Data Channel Encrypt");
    FUNC8(&key, sizeof(key));

    /* send local options string */
    {
        const char *local_options = FUNC6(session);
        const int optlen = FUNC9(local_options) + 1;
        if (!FUNC2(buf, local_options, optlen))
        {
            FUNC7(D_TLS_ERRORS, "TLS Error: KM1 write options failed");
            return false;
        }
    }

    return true;
}
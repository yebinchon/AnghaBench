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
struct key_type {int dummy; } ;
struct key_ctx {int dummy; } ;
struct key {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  M_FATAL ; 
 struct buffer FUNC0 (int) ; 
 struct key_type FUNC1 () ; 
 int /*<<< orphan*/  auth_token_pem_name ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*) ; 
 int FUNC4 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key_ctx*,struct key*,struct key_type*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct buffer*,int /*<<< orphan*/ ,char const*,char const*) ; 

void
FUNC8(struct key_ctx *key_ctx, const char *key_file,
                       const char *key_inline)
{
    struct key_type kt = FUNC1();

    struct buffer server_secret_key = FUNC0(2048);

    bool key_loaded = false;
    if (key_file)
    {
        key_loaded = FUNC7(&server_secret_key,
                                       auth_token_pem_name,
                                       key_file, key_inline);
    }
    else
    {
        key_loaded = FUNC4(&server_secret_key,
                                            auth_token_pem_name);
    }

    if (!key_loaded)
    {
        FUNC6(M_FATAL, "ERROR: Cannot load auth-token secret");
    }

    struct key key;

    if (!FUNC2(&server_secret_key, &key, sizeof(key)))
    {
        FUNC6(M_FATAL, "ERROR: not enough data in auth-token secret");
    }
    FUNC5(key_ctx, &key, &kt, false, "auth-token secret");

    FUNC3(&server_secret_key);
}
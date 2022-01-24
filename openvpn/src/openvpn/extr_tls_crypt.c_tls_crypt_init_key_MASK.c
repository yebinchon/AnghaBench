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
struct key_ctx_bi {int dummy; } ;

/* Variables and functions */
 int KEY_DIRECTION_INVERSE ; 
 int KEY_DIRECTION_NORMAL ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct key_type*,struct key_ctx_bi*,char const*,char const*,int const,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct key_type FUNC2 () ; 

void
FUNC3(struct key_ctx_bi *key, const char *key_file,
                   const char *key_inline, bool tls_server)
{
    const int key_direction = tls_server ?
                              KEY_DIRECTION_NORMAL : KEY_DIRECTION_INVERSE;
    struct key_type kt = FUNC2();
    if (!kt.cipher || !kt.digest)
    {
        FUNC1(M_FATAL, "ERROR: --tls-crypt not supported");
    }
    FUNC0(&kt, key, key_file, key_inline, key_direction,
                            "Control Channel Encryption", "tls-crypt");
}
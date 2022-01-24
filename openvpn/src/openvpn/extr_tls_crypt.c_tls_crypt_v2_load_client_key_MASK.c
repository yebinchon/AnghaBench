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
struct key2 {int dummy; } ;

/* Variables and functions */
 int KEY_DIRECTION_INVERSE ; 
 int KEY_DIRECTION_NORMAL ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct key_ctx_bi*,struct key2 const*,int const,struct key_type*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct key_type FUNC2 () ; 

__attribute__((used)) static inline void
FUNC3(struct key_ctx_bi *key, const struct key2 *key2,
                             bool tls_server)
{
    const int key_direction = tls_server ?
                              KEY_DIRECTION_NORMAL : KEY_DIRECTION_INVERSE;
    struct key_type kt = FUNC2();
    if (!kt.cipher || !kt.digest)
    {
        FUNC1(M_FATAL, "ERROR: --tls-crypt-v2 not supported");
    }
    FUNC0(key, key2, key_direction, &kt,
                    "Control Channel Encryption");
}
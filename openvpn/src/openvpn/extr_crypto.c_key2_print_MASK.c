#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct key_type {int /*<<< orphan*/  hmac_length; int /*<<< orphan*/  cipher_length; } ;
struct key2 {int n; TYPE_1__* keys; } ;
struct gc_arena {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hmac; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_SHOW_KEY_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 

void
FUNC5(const struct key2 *k,
           const struct key_type *kt,
           const char *prefix0,
           const char *prefix1)
{
    struct gc_arena gc = FUNC4();
    FUNC0(k->n == 2);
    FUNC1(D_SHOW_KEY_SOURCE, "%s (cipher): %s",
         prefix0,
         FUNC2(k->keys[0].cipher, kt->cipher_length, 0, &gc));
    FUNC1(D_SHOW_KEY_SOURCE, "%s (hmac): %s",
         prefix0,
         FUNC2(k->keys[0].hmac, kt->hmac_length, 0, &gc));
    FUNC1(D_SHOW_KEY_SOURCE, "%s (cipher): %s",
         prefix1,
         FUNC2(k->keys[1].cipher, kt->cipher_length, 0, &gc));
    FUNC1(D_SHOW_KEY_SOURCE, "%s (hmac): %s",
         prefix1,
         FUNC2(k->keys[1].hmac, kt->hmac_length, 0, &gc));
    FUNC3(&gc);
}
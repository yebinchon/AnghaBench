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
struct lwan_value {unsigned long len; int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ Z_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long const) ; 
 void FUNC6 (struct lwan_value*,unsigned long const) ; 

__attribute__((used)) static void FUNC7(const struct lwan_value *uncompressed,
                          struct lwan_value *compressed)
{
    const unsigned long bound = FUNC2(uncompressed->len);

    compressed->len = bound;

    if (FUNC0(!(compressed->value = FUNC5(bound))))
        goto error_zero_out;

    if (FUNC0(FUNC1((Bytef *)compressed->value, &compressed->len,
                          (Bytef *)uncompressed->value,
                          uncompressed->len) != Z_OK))
        goto error_free_compressed;

    if (FUNC4(compressed->len, uncompressed->len))
        return FUNC6(compressed, bound);

error_free_compressed:
    FUNC3(compressed->value);
    compressed->value = NULL;
error_zero_out:
    compressed->len = 0;
}
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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ CONSTTIME_FALSE_64 ; 
 scalar_t__ CONSTTIME_TRUE_64 ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC2(uint64_t (*op)(uint64_t a, uint64_t b),
                             const char *op_name, uint64_t a, uint64_t b,
                             int is_true)
{
    uint64_t c = op(a, b);

    if (is_true && c != CONSTTIME_TRUE_64) {
        FUNC1("TRUE %s op failed", op_name);
        FUNC0(bio_err, "a=%jx b=%jx\n", a, b);
        return 0;
    } else if (!is_true && c != CONSTTIME_FALSE_64) {
        FUNC1("FALSE %s op failed", op_name);
        FUNC0(bio_err, "a=%jx b=%jx\n", a, b);
        return 0;
    }
    return 1;
}
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
typedef  int /*<<< orphan*/  const BIO_METHOD ;

/* Variables and functions */
 int BIO_TYPE_FILTER ; 
 int BIO_TYPE_START ; 
 int /*<<< orphan*/  const* FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_callback_ctrl ; 
 int /*<<< orphan*/  tap_ctrl ; 
 int /*<<< orphan*/  tap_free ; 
 int /*<<< orphan*/  tap_gets ; 
 int /*<<< orphan*/  tap_new ; 
 int /*<<< orphan*/  tap_puts ; 
 int /*<<< orphan*/  tap_read_ex ; 
 int /*<<< orphan*/  tap_write_ex ; 

const BIO_METHOD *FUNC9(void)
{
    static BIO_METHOD *tap = NULL;

    if (tap == NULL) {
        tap = FUNC0(BIO_TYPE_START | BIO_TYPE_FILTER, "tap");
        if (tap != NULL) {
            FUNC8(tap, tap_write_ex);
            FUNC7(tap, tap_read_ex);
            FUNC6(tap, tap_puts);
            FUNC5(tap, tap_gets);
            FUNC3(tap, tap_ctrl);
            FUNC2(tap, tap_new);
            FUNC4(tap, tap_free);
            FUNC1(tap, tap_callback_ctrl);
        }
    }
    return tap;
}
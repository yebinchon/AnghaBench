#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int new; } ;
typedef  TYPE_1__ MYOBJ_EX_DATA ;
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_argl ; 
 int /*<<< orphan*/  saved_argp ; 
 int saved_idx2 ; 
 int saved_idx3 ; 

__attribute__((used)) static void FUNC8(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
          int idx, long argl, void *argp)
{
    MYOBJ_EX_DATA *ex_data = FUNC2(sizeof(*ex_data));

    if (!FUNC7(idx == saved_idx2 || idx == saved_idx3)
        || !FUNC3(argl, saved_argl)
        || !FUNC5(argp, saved_argp)
        || !FUNC6(ptr)
        || !FUNC4(ex_data)
        || !FUNC7(FUNC0(ad, idx, ex_data))) {
        gbl_result = 0;
        FUNC1(ex_data);
    } else {
        ex_data->new = 1;
    }
}
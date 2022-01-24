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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/ **) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(script_ctx_t *ctx)
{
    const unsigned arg = FUNC3(ctx, 0);
    jsdisp_t *array;
    HRESULT hres;

    FUNC1("%u\n", arg);

    hres = FUNC2(ctx, arg, &array);
    if(FUNC0(hres))
        return hres;

    return FUNC5(ctx, FUNC4(array));
}
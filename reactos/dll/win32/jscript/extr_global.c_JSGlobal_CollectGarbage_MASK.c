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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC1(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    static int once = 0;
    if (!once++)
        FUNC0(": stub\n");
    return S_OK;
}
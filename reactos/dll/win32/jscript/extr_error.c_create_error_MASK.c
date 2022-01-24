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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  descriptionW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  messageW ; 
 int /*<<< orphan*/  numberW ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, jsdisp_t *constr,
        UINT number, jsstr_t *msg, jsdisp_t **ret)
{
    jsdisp_t *err;
    HRESULT hres;

    hres = FUNC2(ctx, NULL, constr, &err);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(err, numberW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                       FUNC5((INT)number));
    if(FUNC0(hres)) {
        FUNC4(err);
        return hres;
    }

    hres = FUNC3(err, messageW,
                                       PROPF_WRITABLE | PROPF_ENUMERABLE | PROPF_CONFIGURABLE,
                                       FUNC6(msg));
    if(FUNC1(hres))
        hres = FUNC3(err, descriptionW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                           FUNC6(msg));
    if(FUNC0(hres)) {
        FUNC4(err);
        return hres;
    }

    *ret = err;
    return S_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ strbuf ;
typedef  int /*<<< orphan*/  Registrar ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC9(Registrar *This, LPCOLESTR data, BOOL do_register)
{
    strbuf buf;
    HRESULT hres;

    FUNC3("(%p %s %x)\n", This, FUNC5(data), do_register);

    FUNC8(&buf);
    hres = FUNC6(This, data, &buf);
    if(FUNC0(hres)) {
        FUNC4("preprocessing failed!\n");
        FUNC2(FUNC1(), 0, buf.str);
        return hres;
    }

    hres = FUNC7(buf.str, do_register);
    if(FUNC0(hres) && do_register)
        FUNC7(buf.str, FALSE);

    FUNC2(FUNC1(), 0, buf.str);
    return hres;
}
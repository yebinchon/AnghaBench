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
typedef  int /*<<< orphan*/  jsval_t ;

/* Variables and functions */
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int FUNC8 (int /*<<< orphan*/  const) ; 
 char const* FUNC9 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC10(const jsval_t v)
{
    switch(FUNC8(v)) {
    case JSV_UNDEFINED:
        return "undefined";
    case JSV_NULL:
        return "null";
    case JSV_OBJECT:
        return FUNC9("obj(%p)", FUNC5(v));
    case JSV_STRING:
        return FUNC9("str(%s)", FUNC1(FUNC6(v)));
    case JSV_NUMBER:
        return FUNC9("%lf", FUNC4(v));
    case JSV_BOOL:
        return FUNC3(v) ? "true" : "false";
    case JSV_VARIANT:
        return FUNC2(FUNC7(v));
    }

    FUNC0(0);
    return NULL;
}
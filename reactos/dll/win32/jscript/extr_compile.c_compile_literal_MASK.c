#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  str; } ;
struct TYPE_5__ {TYPE_2__ regexp; int /*<<< orphan*/  str; int /*<<< orphan*/  dval; int /*<<< orphan*/  bval; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef  TYPE_3__ literal_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_UNREACHABLE ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
#define  LT_BOOL 132 
#define  LT_DOUBLE 131 
#define  LT_NULL 130 
#define  LT_REGEXP 129 
#define  LT_STRING 128 
 int /*<<< orphan*/  OP_bool ; 
 int /*<<< orphan*/  OP_double ; 
 int /*<<< orphan*/  OP_null ; 
 int /*<<< orphan*/  OP_regexp ; 
 int /*<<< orphan*/  OP_str ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(compiler_ctx_t *ctx, literal_t *literal)
{
    switch(literal->type) {
    case LT_BOOL:
        return FUNC2(ctx, OP_bool, literal->u.bval);
    case LT_DOUBLE:
        return FUNC1(ctx, OP_double, literal->u.dval);
    case LT_NULL:
        return FUNC0(ctx, OP_null) ? S_OK : E_OUTOFMEMORY;
    case LT_STRING:
        return FUNC3(ctx, OP_str, literal->u.str);
    case LT_REGEXP:
        return FUNC4(ctx, OP_regexp, literal->u.regexp.str, literal->u.regexp.flags);
    DEFAULT_UNREACHABLE;
    }
    return E_FAIL;
}
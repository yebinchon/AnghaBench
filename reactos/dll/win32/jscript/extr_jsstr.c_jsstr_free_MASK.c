#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_4__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ jsstr_rope_t ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
#define  JSSTR_HEAP 130 
#define  JSSTR_INLINE 129 
#define  JSSTR_ROPE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(jsstr_t *str)
{
    switch(FUNC4(str)) {
    case JSSTR_HEAP:
        FUNC0(FUNC1(str)->buf);
        break;
    case JSSTR_ROPE: {
        jsstr_rope_t *rope = FUNC2(str);
        FUNC3(rope->left);
        FUNC3(rope->right);
        break;
    }
    case JSSTR_INLINE:
        break;
    }

    FUNC0(str);
}
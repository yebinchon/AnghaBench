#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_5__ {int /*<<< orphan*/ * left; int /*<<< orphan*/ * right; } ;
typedef  TYPE_1__ jsstr_rope_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline unsigned FUNC7(jsstr_t *str, WCHAR *buf)
{
    unsigned len = FUNC5(str);
    if(FUNC4(str)) {
        FUNC6(buf, FUNC1(str)->buf, len*sizeof(WCHAR));
    }else if(FUNC3(str)) {
        FUNC6(buf, FUNC0(str)->buf, len*sizeof(WCHAR));
    }else {
        jsstr_rope_t *rope = FUNC2(str);
        FUNC7(rope->left, buf);
        FUNC7(rope->right, buf+FUNC5(rope->left));
    }
    return len;
}
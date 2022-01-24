#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  st; } ;
typedef  TYPE_1__ MYOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static MYOBJ *FUNC2(void)
{
    static int count = 0;
    MYOBJ *obj = FUNC1(sizeof(*obj));

    obj->id = ++count;
    obj->st = FUNC0(CRYPTO_EX_INDEX_APP, obj, &obj->ex_data);
    return obj;
}
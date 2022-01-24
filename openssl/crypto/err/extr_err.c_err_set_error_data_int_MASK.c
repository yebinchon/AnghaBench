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
struct TYPE_5__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ ERR_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,size_t,int) ; 

__attribute__((used)) static int FUNC3(char *data, size_t size, int flags,
                                  int deallocate)
{
    ERR_STATE *es;

    es = FUNC1();
    if (es == NULL)
        return 0;

    FUNC0(es, es->top, deallocate);
    FUNC2(es, es->top, data, size, flags);

    return 1;
}
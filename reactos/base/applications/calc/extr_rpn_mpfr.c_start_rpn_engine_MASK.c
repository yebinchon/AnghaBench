#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mf; } ;
struct TYPE_11__ {TYPE_6__ number; } ;
struct TYPE_9__ {int /*<<< orphan*/  mf; } ;
struct TYPE_8__ {int /*<<< orphan*/  mf; } ;
struct TYPE_14__ {TYPE_4__ memory; TYPE_2__ prev; TYPE_1__ code; } ;
struct TYPE_10__ {int /*<<< orphan*/  mf; } ;
struct TYPE_12__ {TYPE_3__ number; } ;

/* Variables and functions */
 TYPE_7__ calc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/ * stack ; 
 TYPE_5__ temp ; 

void FUNC4(void)
{
    FUNC0(512);
    FUNC2(512);
    stack = NULL;
    FUNC1(calc.code.mf);
    FUNC1(calc.prev.mf);
    FUNC1(calc.memory.number.mf);
    FUNC1(temp.number.mf);
    FUNC3(&calc.memory.number);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* Next; int /*<<< orphan*/ * Key; } ;
struct TYPE_5__ {TYPE_2__* FirstLine; } ;
typedef  TYPE_1__* PINFCACHESECTION ;
typedef  TYPE_2__* PINFCACHELINE ;
typedef  int /*<<< orphan*/  PCSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
PINFCACHELINE
FUNC1(
    PINFCACHESECTION Section,
    PCSTR Key)
{
    PINFCACHELINE Line;

    Line = Section->FirstLine;
    while (Line != NULL)
    {
        if ((Line->Key != NULL) && (FUNC0(Line->Key, Key) == 0))
        {
            return Line;
        }

        Line = Line->Next;
    }

    return NULL;
}
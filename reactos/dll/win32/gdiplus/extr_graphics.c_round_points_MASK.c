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
struct TYPE_6__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_5__ {void* y; void* x; } ;
typedef  TYPE_1__ POINT ;
typedef  int INT ;
typedef  TYPE_2__ GpPointF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(POINT *pti, GpPointF *ptf, INT count)
{
    int i;

    for(i = 0; i < count; i++){
        pti[i].x = FUNC0(ptf[i].X);
        pti[i].y = FUNC0(ptf[i].Y);
    }
}
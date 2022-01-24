#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {size_t x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  size_t INT ;

/* Variables and functions */
 size_t TWOPI ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 

__attribute__((used)) static VOID
FUNC2(POINT pt[], INT iNum, INT iAngle)
{
     INT i;
     POINT ptTemp;

     for (i = 0 ; i < iNum ; i++)
     {
          ptTemp.x = (INT) (pt[i].x * FUNC0 (TWOPI * iAngle / 360) +
               pt[i].y * FUNC1 (TWOPI * iAngle / 360));

          ptTemp.y = (INT) (pt[i].y * FUNC0 (TWOPI * iAngle / 360) -
               pt[i].x * FUNC1 (TWOPI * iAngle / 360));

          pt[i] = ptTemp;
     }
}
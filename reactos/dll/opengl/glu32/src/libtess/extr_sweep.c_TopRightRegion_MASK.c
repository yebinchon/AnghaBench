#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* eUp; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Dst; } ;
typedef  int /*<<< orphan*/  GLUvertex ;
typedef  TYPE_2__ ActiveRegion ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static ActiveRegion *FUNC1( ActiveRegion *reg )
{
  GLUvertex *dst = reg->eUp->Dst;

  /* Find the region above the uppermost edge with the same destination */
  do {
    reg = FUNC0( reg );
  } while( reg->eUp->Dst == dst );
  return reg;
}
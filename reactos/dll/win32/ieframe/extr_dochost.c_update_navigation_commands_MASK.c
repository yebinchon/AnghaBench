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
struct TYPE_5__ {int loading_pos; unsigned int position; unsigned int length; } ;
struct TYPE_6__ {TYPE_1__ travellog; } ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  CSC_NAVIGATEBACK ; 
 int /*<<< orphan*/  CSC_NAVIGATEFORWARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC1(DocHost *dochost)
{
    unsigned pos = dochost->travellog.loading_pos == -1 ? dochost->travellog.position : dochost->travellog.loading_pos;

    FUNC0(dochost, CSC_NAVIGATEBACK, pos > 0);
    FUNC0(dochost, CSC_NAVIGATEFORWARD, pos < dochost->travellog.length);
}
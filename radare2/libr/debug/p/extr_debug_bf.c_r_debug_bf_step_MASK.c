#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* io; } ;
struct TYPE_11__ {TYPE_3__ iob; } ;
struct TYPE_10__ {int /*<<< orphan*/  bfvm; } ;
struct TYPE_8__ {TYPE_1__* desc; } ;
struct TYPE_7__ {TYPE_4__* data; } ;
typedef  TYPE_4__ RIOBdescbg ;
typedef  TYPE_5__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(RDebug *dbg) {
	RIOBdescbg *o = dbg->iob.io->desc->data;
	FUNC0 (o->bfvm, 0);
	return true;
}
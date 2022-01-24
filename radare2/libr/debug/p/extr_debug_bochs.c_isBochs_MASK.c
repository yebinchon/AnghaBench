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
struct TYPE_8__ {TYPE_1__* io; } ;
struct TYPE_11__ {TYPE_2__ iob; } ;
struct TYPE_10__ {TYPE_3__* plugin; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_7__ {TYPE_4__* desc; } ;
typedef  TYPE_4__ RIODesc ;
typedef  TYPE_5__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  eprintf (char*) ; 
 int /*<<< orphan*/  strcmp (char*,scalar_t__) ; 

__attribute__((used)) static bool isBochs(RDebug *dbg) {
	RIODesc *d = dbg->iob.io->desc;
	if (d && d->plugin && d->plugin->name) {
		if (!strcmp ("bochs", d->plugin->name)) {
			return true;
		}
	}
	eprintf ("error: the iodesc data is not bochs friendly\n");
	return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fixups; int /*<<< orphan*/  sections; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_3__* bin_obj; } ;
typedef  TYPE_2__ RBinFile ;
typedef  TYPE_3__ QnxObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(RBinFile *bf) {
	QnxObj *qo = bf->o->bin_obj;
	FUNC1 (qo->sections);
	FUNC1 (qo->fixups);
	bf->o->bin_obj = NULL;
	FUNC0 (qo);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* readOnly; struct TYPE_5__* cmdStrCache; struct TYPE_5__* cmd; struct TYPE_5__* title; } ;
struct TYPE_4__ {TYPE_2__* model; } ;
typedef  TYPE_1__ RPanel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(RPanel *panel) {
	FUNC0 (panel->model->title);
	FUNC0 (panel->model->cmd);
	FUNC0 (panel->model->cmdStrCache);
	FUNC0 (panel->model->readOnly);
	FUNC0 (panel->model);
}
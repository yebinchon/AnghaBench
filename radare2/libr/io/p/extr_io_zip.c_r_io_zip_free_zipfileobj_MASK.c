#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  b; struct TYPE_5__* password; struct TYPE_5__* name; scalar_t__ modified; } ;
typedef  TYPE_1__ RIOZipFileObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(RIOZipFileObj *zfo) {
	if (!zfo) {
		return;
	}
	if (zfo->modified) {
		FUNC2 (zfo);
	}
	FUNC0 (zfo->name);
	FUNC0 (zfo->password);
	FUNC1 (zfo->b);
	FUNC0 (zfo);
}
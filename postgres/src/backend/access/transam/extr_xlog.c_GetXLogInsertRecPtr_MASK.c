#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_3__ {int /*<<< orphan*/  insertpos_lck; int /*<<< orphan*/  CurrBytePos; } ;
typedef  TYPE_1__ XLogCtlInsert ;
struct TYPE_4__ {TYPE_1__ Insert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* XLogCtl ; 

XLogRecPtr
FUNC3(void)
{
	XLogCtlInsert *Insert = &XLogCtl->Insert;
	uint64		current_bytepos;

	FUNC0(&Insert->insertpos_lck);
	current_bytepos = Insert->CurrBytePos;
	FUNC1(&Insert->insertpos_lck);

	return FUNC2(current_bytepos);
}
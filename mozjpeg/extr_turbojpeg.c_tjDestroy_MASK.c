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
typedef  int /*<<< orphan*/  tjhandle ;
struct TYPE_4__ {int /*<<< orphan*/  setjmp_buffer; } ;
struct TYPE_5__ {int init; TYPE_1__ jerr; } ;

/* Variables and functions */
 int COMPRESS ; 
 int DECOMPRESS ; 
 int /*<<< orphan*/  cinfo ; 
 int /*<<< orphan*/  dinfo ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* this ; 

int FUNC5(tjhandle handle)
{
	FUNC1(handle);

	if(FUNC4(this->jerr.setjmp_buffer)) return -1;
	if(this->init&COMPRESS) FUNC2(cinfo);
	if(this->init&DECOMPRESS) FUNC3(dinfo);
	FUNC0(this);
	return 0;
}
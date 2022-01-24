#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_7__ {int /*<<< orphan*/  persistent; struct TYPE_7__* outbuf; struct TYPE_7__* inbuf; int /*<<< orphan*/  strm; } ;
typedef  TYPE_2__ php_bz2_filter_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(php_stream_filter *thisfilter)
{
	if (FUNC1(thisfilter->abstract)) {
		php_bz2_filter_data *data = FUNC1(thisfilter->abstract);
		FUNC0(&(data->strm));
		FUNC2(data->inbuf, data->persistent);
		FUNC2(data->outbuf, data->persistent);
		FUNC2(data, data->persistent);
	}
}
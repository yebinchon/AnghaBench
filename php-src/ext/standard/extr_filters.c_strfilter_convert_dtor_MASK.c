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
struct TYPE_5__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_6__ {int /*<<< orphan*/  persistent; } ;
typedef  TYPE_2__ php_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(php_stream_filter *thisfilter)
{
	FUNC1(FUNC0(thisfilter->abstract) != NULL);

	FUNC3((php_convert_filter *)FUNC0(thisfilter->abstract));
	FUNC2(FUNC0(thisfilter->abstract), ((php_convert_filter *)FUNC0(thisfilter->abstract))->persistent);
}
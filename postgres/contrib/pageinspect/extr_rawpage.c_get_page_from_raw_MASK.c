#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

Page
FUNC8(bytea *raw_page)
{
	Page		page;
	int			raw_page_size;

	raw_page_size = FUNC1(raw_page);

	if (raw_page_size != BLCKSZ)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("invalid page size"),
				 FUNC4("Expected %d bytes, got %d.",
						   BLCKSZ, raw_page_size)));

	page = FUNC7(raw_page_size);

	FUNC6(page, FUNC0(raw_page), raw_page_size);

	return page;
}
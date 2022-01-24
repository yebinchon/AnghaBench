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
typedef  int uint16 ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int BLCKSZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static Page
FUNC7(bytea *raw_page, uint16 type, const char *strtype)
{
	Page		page;
	int			raw_page_size;

	raw_page_size = FUNC2(raw_page) - VARHDRSZ;

	if (raw_page_size != BLCKSZ)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC6("input page too small"),
				 FUNC5("Expected size %d, got %d",
						   BLCKSZ, raw_page_size)));

	page = FUNC1(raw_page);

	/* verify the special space says this page is what we want */
	if (FUNC0(page) != type)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC6("page is not a BRIN page of type \"%s\"", strtype),
				 FUNC5("Expected special type %08x, got %08x.",
						   type, FUNC0(page))));

	return page;
}
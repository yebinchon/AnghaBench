#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* pg_enc2name_tbl ; 

void
FUNC2(int src_encoding,
							   int dest_encoding,
							   int len,
							   int expected_src_encoding,
							   int expected_dest_encoding)
{
	if (!FUNC0(src_encoding))
		FUNC1(ERROR, "invalid source encoding ID: %d", src_encoding);
	if (src_encoding != expected_src_encoding && expected_src_encoding >= 0)
		FUNC1(ERROR, "expected source encoding \"%s\", but got \"%s\"",
			 pg_enc2name_tbl[expected_src_encoding].name,
			 pg_enc2name_tbl[src_encoding].name);
	if (!FUNC0(dest_encoding))
		FUNC1(ERROR, "invalid destination encoding ID: %d", dest_encoding);
	if (dest_encoding != expected_dest_encoding && expected_dest_encoding >= 0)
		FUNC1(ERROR, "expected destination encoding \"%s\", but got \"%s\"",
			 pg_enc2name_tbl[expected_dest_encoding].name,
			 pg_enc2name_tbl[dest_encoding].name);
	if (len < 0)
		FUNC1(ERROR, "encoding conversion length must not be negative");
}
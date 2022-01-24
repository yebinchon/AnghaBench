#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t max_kw_len; int num_keywords; } ;

/* Variables and functions */
 char* FUNC0 (int,TYPE_1__*) ; 
 int* ScanCKeywordTokens ; 
 TYPE_1__ ScanCKeywords ; 
 int FUNC1 (char const*,size_t) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 size_t FUNC3 (char const*) ; 

int
FUNC4(const char *str)
{
	size_t		len;
	int			h;
	const char *kw;

	/*
	 * Reject immediately if too long to be any keyword.  This saves useless
	 * hashing work on long strings.
	 */
	len = FUNC3(str);
	if (len > ScanCKeywords.max_kw_len)
		return -1;

	/*
	 * Compute the hash function.  Since it's a perfect hash, we need only
	 * match to the specific keyword it identifies.
	 */
	h = FUNC1(str, len);

	/* An out-of-range result implies no match */
	if (h < 0 || h >= ScanCKeywords.num_keywords)
		return -1;

	kw = FUNC0(h, &ScanCKeywords);

	if (FUNC2(kw, str) == 0)
		return ScanCKeywordTokens[h];

	return -1;
}
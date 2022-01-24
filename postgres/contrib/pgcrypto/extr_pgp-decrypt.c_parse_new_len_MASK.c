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
typedef  int uint8 ;
typedef  scalar_t__ b ;
typedef  int /*<<< orphan*/  PullFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int MAX_CHUNK ; 
 int PKT_NORMAL ; 
 int PKT_STREAM ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(PullFilter *src, int *len_p)
{
	uint8		b;
	int			len;
	int			pkttype = PKT_NORMAL;

	FUNC0(src, b);
	if (b <= 191)
		len = b;
	else if (b >= 192 && b <= 223)
	{
		len = ((unsigned) (b) - 192) << 8;
		FUNC0(src, b);
		len += 192 + b;
	}
	else if (b == 255)
	{
		FUNC0(src, b);
		len = b;
		FUNC0(src, b);
		len = (len << 8) | b;
		FUNC0(src, b);
		len = (len << 8) | b;
		FUNC0(src, b);
		len = (len << 8) | b;
	}
	else
	{
		len = 1 << (b & 0x1F);
		pkttype = PKT_STREAM;
	}

	if (len < 0 || len > MAX_CHUNK)
	{
		FUNC1("parse_new_len: weird length");
		return PXE_PGP_CORRUPT_DATA;
	}

	*len_p = len;
	return pkttype;
}
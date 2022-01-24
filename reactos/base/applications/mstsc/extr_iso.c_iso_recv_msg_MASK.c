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
typedef  int uint16 ;
typedef  int /*<<< orphan*/ * STREAM ;

/* Variables and functions */
 int ISO_PDU_DT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static STREAM
FUNC6(uint8 * code, uint8 * rdpver)
{
	STREAM s;
	uint16 length;
	uint8 version;

	s = FUNC5(NULL, 4);
	if (s == NULL)
		return NULL;
	FUNC2(s, version);
	if (rdpver != NULL)
		*rdpver = version;
	if (version == 3)
	{
		FUNC3(s, 1);	/* pad */
		FUNC1(s, length);
	}
	else
	{
		FUNC2(s, length);
		if (length & 0x80)
		{
			length &= ~0x80;
			FUNC4(s, length);
		}
	}
	if (length < 4)
	{
		FUNC0("Bad packet header\n");
		return NULL;
	}
	s = FUNC5(s, length - 4);
	if (s == NULL)
		return NULL;
	if (version != 3)
		return s;
	FUNC3(s, 1);	/* hdrlen */
	FUNC2(s, *code);
	if (*code == ISO_PDU_DT)
	{
		FUNC3(s, 1);	/* eot */
		return s;
	}
	FUNC3(s, 5);	/* dst_ref, src_ref, class */
	return s;
}
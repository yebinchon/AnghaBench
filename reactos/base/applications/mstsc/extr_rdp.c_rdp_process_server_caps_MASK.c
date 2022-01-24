#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint16 ;
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
#define  RDP_CAPSET_BITMAP 129 
#define  RDP_CAPSET_GENERAL 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(STREAM s, uint16 length)
{
	int n;
	uint8 *next, *start;
	uint16 ncapsets, capset_type, capset_length;

	start = s->p;

	FUNC0(s, ncapsets);
	FUNC1(s, 2);	/* pad */

	for (n = 0; n < ncapsets; n++)
	{
		if (s->p > start + length)
			return;

		FUNC0(s, capset_type);
		FUNC0(s, capset_length);

		next = s->p + capset_length - 4;

		switch (capset_type)
		{
			case RDP_CAPSET_GENERAL:
				FUNC3(s);
				break;

			case RDP_CAPSET_BITMAP:
				FUNC2(s);
				break;
		}

		s->p = next;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_8__ {int* p; int* end; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
#define  SEC_TAG_SRV_CHANNELS 130 
#define  SEC_TAG_SRV_CRYPT 129 
#define  SEC_TAG_SRV_INFO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(STREAM s)
{
	uint16 tag, length;
	uint8 *next_tag;
	uint8 len;

	FUNC2(s, 21);	/* header (T.124 ConferenceCreateResponse) */
	FUNC1(s, len);
	if (len & 0x80)
		FUNC1(s, len);

	while (s->p < s->end)
	{
		FUNC0(s, tag);
		FUNC0(s, length);

		if (length <= 4)
			return;

		next_tag = s->p + length - 4;

		switch (tag)
		{
			case SEC_TAG_SRV_INFO:
				FUNC4(s);
				break;

			case SEC_TAG_SRV_CRYPT:
				FUNC3(s);
				break;

			case SEC_TAG_SRV_CHANNELS:
				/* FIXME: We should parse this information and
				   use it to map RDP5 channels to MCS 
				   channels */
				break;

			default:
				FUNC5("response tag 0x%x\n", tag);
		}

		s->p = next_tag;
	}
}
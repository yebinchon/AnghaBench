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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  LICENCE_TAG_ERROR_ALERT 132 
#define  LICENCE_TAG_NEW_LICENCE 131 
#define  LICENCE_TAG_PLATFORM_CHALLANGE 130 
#define  LICENCE_TAG_REQUEST 129 
#define  LICENCE_TAG_UPGRADE_LICENCE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void
FUNC8(STREAM s)
{
	uint8 tag;

	FUNC1(s, tag);
	FUNC2(s, 3);	/* version, length */

#if WITH_DEBUG
	DEBUG(("Received licensing PDU (message type 0x%02x)\n", tag));
#endif

	switch (tag)
	{
		case LICENCE_TAG_REQUEST:
			FUNC6(s);
			break;

		case LICENCE_TAG_PLATFORM_CHALLANGE:
			FUNC5(s);
			break;

		case LICENCE_TAG_NEW_LICENCE:
		case LICENCE_TAG_UPGRADE_LICENCE:
			/* we can handle new and upgrades of licences the same way. */
			FUNC4(s);
			break;

		case LICENCE_TAG_ERROR_ALERT:
			FUNC3(s);
			break;

		default:
			FUNC7("licence tag 0x%02x\n", tag);
	}
}
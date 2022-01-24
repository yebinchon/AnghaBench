#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int end; int data; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  BER_TAG_BOOLEAN ; 
 int /*<<< orphan*/  BER_TAG_OCTET_STRING ; 
 int /*<<< orphan*/  MCS_CONNECT_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(STREAM mcs_data)
{
	int datalen = mcs_data->end - mcs_data->data;
	int length = 9 + 3 * 34 + 4 + datalen;
	STREAM s;

	s = FUNC1(length + 5);

	FUNC0(s, MCS_CONNECT_INITIAL, length);
	FUNC0(s, BER_TAG_OCTET_STRING, 1);	/* calling domain */
	FUNC4(s, 1);
	FUNC0(s, BER_TAG_OCTET_STRING, 1);	/* called domain */
	FUNC4(s, 1);

	FUNC0(s, BER_TAG_BOOLEAN, 1);
	FUNC4(s, 0xff);	/* upward flag */

	FUNC3(s, 34, 2, 0, 0xffff);	/* target params */
	FUNC3(s, 1, 1, 1, 0x420);	/* min params */
	FUNC3(s, 0xffff, 0xfc17, 0xffff, 0xffff);	/* max params */

	FUNC0(s, BER_TAG_OCTET_STRING, datalen);
	FUNC5(s, mcs_data->data, datalen);

	FUNC6(s);
	FUNC2(s);
}
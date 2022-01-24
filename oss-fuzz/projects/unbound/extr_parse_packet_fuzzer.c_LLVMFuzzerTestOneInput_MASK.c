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
typedef  int /*<<< orphan*/  uint8_t ;
struct msg_parse {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  prs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct msg_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct msg_parse*,scalar_t__) ; 
 scalar_t__ region ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 

int FUNC5(const uint8_t *buf, size_t len)
{
	if (!region) {
		region = FUNC3();
		if (!region) {
			FUNC0();
		}
}
	sldns_buffer pktbuf;
	FUNC4(&pktbuf, (void*)buf, len);

	struct msg_parse prs;
	FUNC1(&prs, 0, sizeof(prs));
	FUNC2(&pktbuf, &prs, region);
	return 0;
}
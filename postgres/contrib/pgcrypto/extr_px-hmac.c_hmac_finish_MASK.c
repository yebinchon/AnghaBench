#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {int /*<<< orphan*/ * opad; } ;
struct TYPE_5__ {TYPE_1__ p; int /*<<< orphan*/ * md; } ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_2__ PX_HMAC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC8(PX_HMAC *h, uint8 *dst)
{
	PX_MD	   *md = h->md;
	unsigned	bs,
				hlen;
	uint8	   *buf;

	bs = FUNC2(md);
	hlen = FUNC5(md);

	buf = FUNC0(hlen);

	FUNC3(md, buf);

	FUNC4(md);
	FUNC6(md, h->p.opad, bs);
	FUNC6(md, buf, hlen);
	FUNC3(md, dst);

	FUNC7(buf, 0, hlen);
	FUNC1(buf);
}
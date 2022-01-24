#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* opad; TYPE_2__* ipad; } ;
struct TYPE_7__ {TYPE_1__ p; int /*<<< orphan*/  md; } ;
typedef  TYPE_2__ PX_HMAC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC4(PX_HMAC *h)
{
	unsigned	bs;

	bs = FUNC1(h->md);
	FUNC2(h->md);

	FUNC3(h->p.ipad, 0, bs);
	FUNC3(h->p.opad, 0, bs);
	FUNC0(h->p.ipad);
	FUNC0(h->p.opad);
	FUNC0(h);
}
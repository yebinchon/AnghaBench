#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ p; } ;
typedef  TYPE_2__ SHA1_CTX ;
typedef  TYPE_2__ PX_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(PX_MD *h)
{
	SHA1_CTX   *ctx = (SHA1_CTX *) h->p.ptr;

	FUNC1(ctx, 0, sizeof(*ctx));
	FUNC0(ctx);
	FUNC0(h);
}
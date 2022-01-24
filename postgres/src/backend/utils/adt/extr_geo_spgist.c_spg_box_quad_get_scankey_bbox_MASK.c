#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  boundbox; } ;
struct TYPE_4__ {int sk_subtype; int /*<<< orphan*/  sk_argument; int /*<<< orphan*/  sk_strategy; } ;
typedef  TYPE_1__* ScanKey ;
typedef  int /*<<< orphan*/  BOX ;

/* Variables and functions */
#define  BOXOID 129 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
#define  POLYGONOID 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOX *
FUNC4(ScanKey sk, bool *recheck)
{
	switch (sk->sk_subtype)
	{
		case BOXOID:
			return FUNC0(sk->sk_argument);

		case POLYGONOID:
			if (recheck && !FUNC3(sk->sk_strategy))
				*recheck = true;
			return &FUNC1(sk->sk_argument)->boundbox;

		default:
			FUNC2(ERROR, "unrecognized scankey subtype: %d", sk->sk_subtype);
			return NULL;
	}
}
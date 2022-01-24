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
typedef  int /*<<< orphan*/  BN_ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

void FUNC3(BN_ULONG *r, BN_ULONG *a, int na, BN_ULONG *b, int nb)
	{
	BN_ULONG *rr;

#ifdef BN_COUNT
	printf(" bn_mul_normal %d * %d\n",na,nb);
#endif

	if (na < nb)
		{
		int itmp;
		BN_ULONG *ltmp;

		itmp=na; na=nb; nb=itmp;
		ltmp=a;   a=b;   b=ltmp;

		}
	rr= &(r[na]);
	rr[0]=FUNC1(r,a,na,b[0]);

	for (;;)
		{
		if (--nb <= 0) return;
		rr[1]=FUNC0(&(r[1]),a,na,b[1]);
		if (--nb <= 0) return;
		rr[2]=FUNC0(&(r[2]),a,na,b[2]);
		if (--nb <= 0) return;
		rr[3]=FUNC0(&(r[3]),a,na,b[3]);
		if (--nb <= 0) return;
		rr[4]=FUNC0(&(r[4]),a,na,b[4]);
		rr+=4;
		r+=4;
		b+=4;
		}
	}
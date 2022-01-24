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
typedef  scalar_t__ BN_ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,int,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 

void FUNC4(BN_ULONG *r, BN_ULONG *a, int n, BN_ULONG *tmp)
	{
	int i,j,max;
	BN_ULONG *ap,*rp;

	max=n*2;
	ap=a;
	rp=r;
	rp[0]=rp[max-1]=0;
	rp++;
	j=n;

	if (--j > 0)
		{
		ap++;
		rp[j]=FUNC2(rp,ap,j,ap[-1]);
		rp+=2;
		}

	for (i=n-2; i>0; i--)
		{
		j--;
		ap++;
		rp[j]=FUNC1(rp,ap,j,ap[-1]);
		rp+=2;
		}

	FUNC0(r,r,r,max);

	/* There will not be a carry */

	FUNC3(tmp,a,n);

	FUNC0(r,r,tmp,max);
	}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* d; } ;
typedef  int BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BYTES ; 
 int FUNC0 (TYPE_1__ const*) ; 

int FUNC1(const BIGNUM *a, unsigned char *to)
	{
	int n,i;
	BN_ULONG l;

	n=i=FUNC0(a);
	while (i-- > 0)
		{
		l=a->d[i/BN_BYTES];
		*(to++)=(unsigned char)(l>>(8*(i%BN_BYTES)))&0xff;
		}
	return(n);
	}
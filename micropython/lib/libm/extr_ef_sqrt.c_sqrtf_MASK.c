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
typedef  int __uint32_t ;
typedef  int __int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,float) ; 
 int /*<<< orphan*/  FUNC4 (float,int) ; 
 float one ; 
 float tiny ; 

float FUNC5(float x)
/*
#ifdef __STDC__
	float __ieee754_sqrtf(float x)
#else
	float __ieee754_sqrtf(x)
	float x;
#endif
*/
{
	float z;
	__uint32_t r,hx;
	__int32_t ix,s,q,m,t,i;

	FUNC3(ix,x);
	hx = ix&0x7fffffff;

    /* take care of Inf and NaN */
	if(!FUNC0(hx))
	    return x*x+x;		/* sqrt(NaN)=NaN, sqrt(+inf)=+inf
					   sqrt(-inf)=sNaN */
    /* take care of zero and -ves */
	if(FUNC2(hx)) return x;/* sqrt(+-0) = +-0 */
	if(ix<0) return (x-x)/(x-x);		/* sqrt(-ve) = sNaN */

    /* normalize x */
	m = (ix>>23);
	if(FUNC1(hx)) {		/* subnormal x */
	    for(i=0;(ix&0x00800000L)==0;i++) ix<<=1;
	    m -= i-1;
	}
	m -= 127;	/* unbias exponent */
	ix = (ix&0x007fffffL)|0x00800000L;
	if(m&1)	/* odd m, double x to make it even */
	    ix += ix;
	m >>= 1;	/* m = [m/2] */

    /* generate sqrt(x) bit by bit */
	ix += ix;
	q = s = 0;		/* q = sqrt(x) */
	r = 0x01000000L;		/* r = moving bit from right to left */

	while(r!=0) {
	    t = s+r; 
	    if(t<=ix) { 
		s    = t+r; 
		ix  -= t; 
		q   += r; 
	    } 
	    ix += ix;
	    r>>=1;
	}

    /* use floating add to find out rounding direction */
	if(ix!=0) {
	    z = one-tiny; /* trigger inexact flag */
	    if (z>=one) {
	        z = one+tiny;
		if (z>one)
		    q += 2;
		else
		    q += (q&1);
	    }
	}
	ix = (q>>1)+0x3f000000L;
	ix += (m <<23);
	FUNC4(z,ix);
	return z;
}
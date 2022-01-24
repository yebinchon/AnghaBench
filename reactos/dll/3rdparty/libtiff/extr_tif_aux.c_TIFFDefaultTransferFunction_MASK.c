#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
typedef  int tmsize_t ;
struct TYPE_3__ {int td_bitspersample; int td_samplesperpixel; int td_extrasamples; scalar_t__** td_transferfunction; } ;
typedef  TYPE_1__ TIFFDirectory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (double,double) ; 

__attribute__((used)) static int
FUNC5(TIFFDirectory* td)
{
	uint16 **tf = td->td_transferfunction;
	tmsize_t i, n, nbytes;

	tf[0] = tf[1] = tf[2] = 0;
	if (td->td_bitspersample >= sizeof(tmsize_t) * 8 - 2)
		return 0;

	n = ((tmsize_t)1)<<td->td_bitspersample;
	nbytes = n * sizeof (uint16);
        tf[0] = (uint16 *)FUNC1(nbytes);
	if (tf[0] == NULL)
		return 0;
	tf[0][0] = 0;
	for (i = 1; i < n; i++) {
		double t = (double)i/((double) n-1.);
		tf[0][i] = (uint16)FUNC3(65535.*FUNC4(t, 2.2) + .5);
	}

	if (td->td_samplesperpixel - td->td_extrasamples > 1) {
                tf[1] = (uint16 *)FUNC1(nbytes);
		if(tf[1] == NULL)
			goto bad;
		FUNC2(tf[1], tf[0], nbytes);
                tf[2] = (uint16 *)FUNC1(nbytes);
		if (tf[2] == NULL)
			goto bad;
		FUNC2(tf[2], tf[0], nbytes);
	}
	return 1;

bad:
	if (tf[0])
		FUNC0(tf[0]);
	if (tf[1])
		FUNC0(tf[1]);
	if (tf[2])
		FUNC0(tf[2]);
	tf[0] = tf[1] = tf[2] = 0;
	return 0;
}
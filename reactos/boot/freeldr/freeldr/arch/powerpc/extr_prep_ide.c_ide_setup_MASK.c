#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int bytespersec; short cylinders; short heads; short sectors; scalar_t__ port; } ;
typedef  TYPE_1__ idectl_desc ;

/* Variables and functions */
 short FUNC0 (scalar_t__) ; 
 short FUNC1 (short) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,short,short,short) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9( void *extension ) {
    idectl_desc *desc = (idectl_desc *)extension;
    short identbuffer[256];
    char namebuf[41];
    short *databuf = (short *)identbuffer, in;
    int inwords;

    FUNC5( extension );
    FUNC3( extension );
    desc->bytespersec = 512;
    FUNC2(desc->port+2, 1);
    FUNC2(desc->port+3, 0);
    FUNC2(desc->port+4, 0);
    FUNC2(desc->port+5, 0);
    FUNC2(desc->port+6, 0);
    FUNC2(desc->port+7, 0xec);
    FUNC4( extension );

    for( inwords = 0; inwords < desc->bytespersec / sizeof(short); inwords++ ) {
    in = FUNC0(desc->port);
    databuf[inwords] = FUNC1(in);
    FUNC8();
    }

    desc->cylinders = identbuffer[1];
    desc->heads = identbuffer[3];
    desc->sectors = identbuffer[6];

    /* Debug: Write out hard disc model */

    FUNC7(namebuf, (char *)(identbuffer+0x1b), 41);
    FUNC6("HARD DISC MODEL: %s c,h,s %d,%d,%d\n",
       namebuf, desc->cylinders, desc->heads, desc->sectors);
}
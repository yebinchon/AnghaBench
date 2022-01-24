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
struct TYPE_2__ {int bytespersec; int seek_sector; int seek_cylinder; int seek_head; int seekto; scalar_t__ port; } ;
typedef  TYPE_1__ idectl_desc ;

/* Variables and functions */
 short FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int) ; 

int FUNC4( void *extension, char *buffer, int bytes ) {
    idectl_desc *desc = (idectl_desc *)extension;
    short *databuf = (short *)buffer;
    int inwords;

    FUNC2( extension );
    FUNC1(desc->port+2, bytes / desc->bytespersec);
    FUNC1(desc->port+3, desc->seek_sector + 1);
    FUNC1(desc->port+4, desc->seek_cylinder);
    FUNC1(desc->port+5, desc->seek_cylinder >> 8);
    FUNC1(desc->port+6, desc->seek_head | 0xa0);
    FUNC1(desc->port+7, 0x20);

    for( inwords = 0; inwords < desc->bytespersec / sizeof(short); inwords++ ) {
    databuf[inwords] = FUNC0(desc->port);
    }

    desc->seekto += desc->bytespersec;
    FUNC3( extension, desc->seekto, desc->seekto >> 32 );

    return bytes - (bytes % desc->bytespersec);
}
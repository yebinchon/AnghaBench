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
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_3__ {int (* init ) (int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ TIFFCodec ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

int
FUNC3(TIFF* tif, int scheme)
{
	const TIFFCodec *c = FUNC0((uint16) scheme);

	FUNC1(tif);
	/*
	 * Don't treat an unknown compression scheme as an error.
	 * This permits applications to open files with data that
	 * the library does not have builtin support for, but which
	 * may still be meaningful.
	 */
	return (c ? (*c->init)(tif, scheme) : 1);
}
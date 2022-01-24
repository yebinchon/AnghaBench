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
struct TYPE_3__ {int /*<<< orphan*/ * init; } ;
typedef  TYPE_1__ TIFFCodec ;

/* Variables and functions */
 int /*<<< orphan*/ * NotConfigured ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(uint16 scheme)
{
	const TIFFCodec* codec = FUNC0(scheme);

	if(codec == NULL) {
		return 0;
	}
	if(codec->init == NULL) {
		return 0;
	}
	if(codec->init != NotConfigured){
		return 1;
	}
	return 0;
}
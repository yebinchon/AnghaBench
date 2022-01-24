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
struct TYPE_3__ {char const* name; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

const char *FUNC1(int codec_id)
{
	AVCodec *codec = FUNC0(codec_id);
	if (codec != NULL)
		return codec->name;
	else
		return NULL;
}
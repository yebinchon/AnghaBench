#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; } ;
typedef  TYPE_1__ AVCodecDescriptor ;
typedef  TYPE_2__ AVCodec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 

const char *FUNC2(int codec_id)
{
    const char *name = NULL;
    const AVCodecDescriptor *desc = FUNC0(codec_id);
    if (desc)
        name = desc->name;
    if (!name) {
        AVCodec *avcodec = FUNC1(codec_id);
        if (avcodec)
            name = avcodec->name;
    }
    return name;
}
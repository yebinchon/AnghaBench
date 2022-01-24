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
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
typedef  TYPE_1__ AVCodecDescriptor ;
typedef  TYPE_2__ AVCodec ;

/* Variables and functions */
 int AV_CODEC_ID_NONE ; 
 TYPE_1__* FUNC0 (char const*) ; 
 TYPE_2__* FUNC1 (char const*) ; 

int FUNC2(const char *codec)
{
    int id = AV_CODEC_ID_NONE;
    if (codec) {
        const AVCodecDescriptor *desc = FUNC0(codec);
        if (desc)
            id = desc->id;
        if (id == AV_CODEC_ID_NONE) {
            AVCodec *avcodec = FUNC1(codec);
            if (avcodec)
                id = avcodec->id;
        }
    }
    return id;
}
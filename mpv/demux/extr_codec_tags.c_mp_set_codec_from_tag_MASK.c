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
struct mp_codec_params {scalar_t__ type; scalar_t__ bits_per_coded_sample; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 scalar_t__ STREAM_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_codec_params*) ; 

void FUNC2(struct mp_codec_params *c)
{
    c->codec = FUNC0(c->type, c->codec_tag);

    if (c->type == STREAM_AUDIO && c->bits_per_coded_sample)
        FUNC1(c);
}
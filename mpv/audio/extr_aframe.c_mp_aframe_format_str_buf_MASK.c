#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num; } ;
struct mp_aframe {int /*<<< orphan*/  format; TYPE_2__ chmap; TYPE_1__* av_frame; } ;
typedef  int /*<<< orphan*/  ch ;
struct TYPE_4__ {int sample_rate; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_2__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int,char*,int,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

char *FUNC6(char *buf, size_t buf_size, struct mp_aframe *fmt)
{
    char ch[128];
    FUNC1(ch, sizeof(ch), &fmt->chmap);
    char *hr_ch = FUNC2(&fmt->chmap);
    if (FUNC5(hr_ch, ch) != 0)
        FUNC3(ch, sizeof(ch), " (%s)", hr_ch);
    FUNC4(buf, buf_size, "%dHz %s %dch %s", fmt->av_frame->sample_rate,
             ch, fmt->chmap.num, FUNC0(fmt->format));
    return buf;
}
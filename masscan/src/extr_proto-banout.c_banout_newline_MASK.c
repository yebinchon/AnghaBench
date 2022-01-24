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
struct BannerOutput {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,unsigned int,char) ; 
 struct BannerOutput* FUNC1 (struct BannerOutput*,unsigned int) ; 

void
FUNC2(struct BannerOutput *banout, unsigned proto)
{
    struct BannerOutput *p;

    p = FUNC1(banout, proto);
    if (p && p->length) {
        FUNC0(banout, proto, '\n');
    }
}
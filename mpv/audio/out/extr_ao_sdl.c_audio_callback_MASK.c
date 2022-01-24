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
struct ao {int sstride; scalar_t__ bps; } ;
typedef  void Uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,void**,int,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *userdata, Uint8 *stream, int len)
{
    struct ao *ao = userdata;

    void *data[1] = {stream};

    if (len % ao->sstride)
        FUNC0(ao, "SDL audio callback not sample aligned");

    // Time this buffer will take, plus assume 1 period (1 callback invocation)
    // fixed latency.
    double delay = 2 * len / (double)ao->bps;

    FUNC1(ao, data, len / ao->sstride, FUNC2() + 1000000LL * delay);
}
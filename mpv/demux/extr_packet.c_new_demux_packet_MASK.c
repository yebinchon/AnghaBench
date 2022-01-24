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
struct demux_packet {int dummy; } ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 size_t INT_MAX ; 
 struct demux_packet* FUNC0 (TYPE_1__*) ; 

struct demux_packet *FUNC1(size_t len)
{
    if (len > INT_MAX)
        return NULL;
    AVPacket pkt = { .data = NULL, .size = len };
    return FUNC0(&pkt);
}
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
struct frame {int dummy; } ;
typedef  int /*<<< orphan*/  packet_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame*,int) ; 
 scalar_t__ FUNC1 (int) ; 

void
FUNC2(struct frame *frame, int proto)
{
    if (FUNC1(proto))
    {
        FUNC0(frame, sizeof(packet_size_type));
    }
}
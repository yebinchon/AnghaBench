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
struct mp_chmap_sel {int* speakers; } ;

/* Variables and functions */
 int MP_SPEAKER_ID_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(struct mp_chmap_sel *s, int id)
{
    FUNC0(id >= 0 && id < MP_SPEAKER_ID_COUNT);
    s->speakers[id] = true;
}
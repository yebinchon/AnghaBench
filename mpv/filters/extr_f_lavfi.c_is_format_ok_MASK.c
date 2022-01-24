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
struct mp_frame {scalar_t__ type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct mp_frame a, struct mp_frame b)
{
    if (a.type == b.type && a.type == MP_FRAME_VIDEO)
        return FUNC1(a.data, b.data);
    if (a.type == b.type && a.type == MP_FRAME_AUDIO)
        return FUNC0(a.data, b.data);
    return false;
}
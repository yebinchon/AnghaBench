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
struct mp_chmap {int /*<<< orphan*/  member_0; } ;
struct mp_aframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_aframe*,struct mp_chmap*) ; 
 scalar_t__ FUNC1 (struct mp_aframe*) ; 
 scalar_t__ FUNC2 (struct mp_aframe*) ; 
 scalar_t__ FUNC3 (struct mp_chmap*,struct mp_chmap*) ; 

__attribute__((used)) static bool FUNC4(struct mp_aframe *a, struct mp_aframe *b)
{
    struct mp_chmap ca = {0}, cb = {0};
    FUNC0(a, &ca);
    FUNC0(b, &cb);
    return FUNC3(&ca, &cb) &&
           FUNC2(a) == FUNC2(b) &&
           FUNC1(a) == FUNC1(b);
}
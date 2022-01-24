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
struct mp_aframe {int dummy; } ;
struct AVFrame {int dummy; } ;
typedef  struct AVFrame AVFrame ;

/* Variables and functions */
 struct AVFrame* FUNC0 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_aframe*) ; 

struct AVFrame *FUNC2(struct mp_aframe *frame)
{
    AVFrame *av = FUNC0(frame);
    FUNC1(frame);
    return av;
}
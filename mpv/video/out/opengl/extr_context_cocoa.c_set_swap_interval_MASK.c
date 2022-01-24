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
typedef  scalar_t__ CGLError ;
typedef  int /*<<< orphan*/  CGLContextObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  kCGLCPSwapInterval ; 
 scalar_t__ kCGLNoError ; 

__attribute__((used)) static int FUNC2(int enabled)
{
    CGLContextObj ctx = FUNC0();
    CGLError err = FUNC1(ctx, kCGLCPSwapInterval, &enabled);
    return (err == kCGLNoError) ? 0 : -1;
}
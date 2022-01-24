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

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(float opts[2], int out[2], int size)
{
    out[0] = FUNC0((int)(opts[0] * size), 0, size);
    out[1] = FUNC0((int)(opts[1] * size), 0, size);

    if (out[0] + out[1] >= size) {
        // This case is not really supported. Show an error by 1 pixel.
        out[0] = 0;
        out[1] = FUNC1(0, size - 1);
    }
}
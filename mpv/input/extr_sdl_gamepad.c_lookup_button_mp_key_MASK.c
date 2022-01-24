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
 int INVALID_KEY ; 
 int FUNC0 (int**) ; 
 int** button_map ; 

__attribute__((used)) static int FUNC1(int sdl_key)
{
    for (int i = 0; i < FUNC0(button_map); i++) {
        if (button_map[i][0] == sdl_key) {
            return button_map[i][1];
        }
    }
    return INVALID_KEY;
}
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
 int FUNC0 (int**) ; 
 int** planar_formats ; 

int FUNC1(int format)
{
    for (int n = 0; n < FUNC0(planar_formats); n++) {
        if (planar_formats[n][1] == format)
            return planar_formats[n][0];
    }
    return format;
}
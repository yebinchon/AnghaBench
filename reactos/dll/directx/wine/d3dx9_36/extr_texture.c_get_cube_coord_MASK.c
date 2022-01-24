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
typedef  enum cube_coord { ____Placeholder_cube_coord } cube_coord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  ONE 133 
#define  XCOORD 132 
#define  XCOORDINV 131 
#define  YCOORD 130 
#define  YCOORDINV 129 
#define  ZERO 128 

__attribute__((used)) static float FUNC1(enum cube_coord coord, unsigned int x, unsigned int y, unsigned int size)
{
    switch (coord)
    {
        case XCOORD:
            return x + 0.5f;
        case XCOORDINV:
            return size - x - 0.5f;
        case YCOORD:
            return y + 0.5f;
        case YCOORDINV:
            return size - y - 0.5f;
        case ZERO:
            return 0.0f;
        case ONE:
            return size;
       default:
           FUNC0("Unexpected coordinate value\n");
           return 0.0f;
    }
}
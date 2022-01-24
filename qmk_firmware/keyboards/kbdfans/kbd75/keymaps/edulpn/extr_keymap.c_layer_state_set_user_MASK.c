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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  MAC_FN_LAYER 131 
#define  MAC_LAYER 130 
#define  WINDOWS_FN_LAYER 129 
#define  WINDOWS_LAYER 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

uint32_t FUNC4(uint32_t state) {
    switch (FUNC0(state)) {
    case WINDOWS_LAYER:
        FUNC2();
        break;
    case WINDOWS_FN_LAYER:
        FUNC2();
        break;
    case MAC_LAYER:
        FUNC3();
        break;
    case MAC_FN_LAYER:
        FUNC3();
        break;
    default:
        FUNC1 (0x00,  0xFF, 0xFF);
        break;
    }
    return state;
}
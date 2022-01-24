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
#define  FLED_INDI 130 
#define  FLED_OFF 129 
#define  FLED_RGB 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int fled_mode ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
    // FLED -> FLED_RGB -> FLED_INDI
    switch (fled_mode) {
        case FLED_OFF:
        fled_mode = FLED_RGB;
        break;
        
        case FLED_RGB:
        fled_mode = FLED_INDI;
        break;
        
        case FLED_INDI:
        fled_mode = FLED_OFF;
        break;
    }
    
    // Update stored config
    FUNC0();
    FUNC1();
}
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
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLUE_LED ; 
#define  FRENCH_LAYER 131 
 int /*<<< orphan*/  GREEN_LED ; 
#define  MEDIA_LAYER 130 
#define  NORMAL_LAYER 129 
 int /*<<< orphan*/  RED_LED ; 
#define  TBD_LAYER2 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

layer_state_t FUNC3(layer_state_t state)
{
    FUNC1();

    switch (FUNC0(state))
    {
    case NORMAL_LAYER:
	break;

    case MEDIA_LAYER:
	FUNC2(RED_LED);
	break;

    case TBD_LAYER2:
	FUNC2(BLUE_LED);
	break;

    case FRENCH_LAYER:
	FUNC2(GREEN_LED);
	break;
	}
    return state;
}
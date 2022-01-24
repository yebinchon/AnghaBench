#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int id; int param; } ;
struct TYPE_5__ {TYPE_1__ kind; } ;
typedef  TYPE_2__ action_t ;

/* Variables and functions */
#define  ACT_COMMAND 141 
#define  ACT_FUNCTION 140 
#define  ACT_LAYER 139 
#define  ACT_LAYER_MODS 138 
#define  ACT_LAYER_TAP 137 
#define  ACT_LAYER_TAP_EXT 136 
#define  ACT_LMODS 135 
#define  ACT_LMODS_TAP 134 
#define  ACT_MACRO 133 
#define  ACT_MOUSEKEY 132 
#define  ACT_RMODS 131 
#define  ACT_RMODS_TAP 130 
#define  ACT_SWAP_HANDS 129 
#define  ACT_USAGE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(action_t action) {
    switch (action.kind.id) {
        case ACT_LMODS:
            FUNC0("ACT_LMODS");
            break;
        case ACT_RMODS:
            FUNC0("ACT_RMODS");
            break;
        case ACT_LMODS_TAP:
            FUNC0("ACT_LMODS_TAP");
            break;
        case ACT_RMODS_TAP:
            FUNC0("ACT_RMODS_TAP");
            break;
        case ACT_USAGE:
            FUNC0("ACT_USAGE");
            break;
        case ACT_MOUSEKEY:
            FUNC0("ACT_MOUSEKEY");
            break;
        case ACT_LAYER:
            FUNC0("ACT_LAYER");
            break;
        case ACT_LAYER_MODS:
            FUNC0("ACT_LAYER_MODS");
            break;
        case ACT_LAYER_TAP:
            FUNC0("ACT_LAYER_TAP");
            break;
        case ACT_LAYER_TAP_EXT:
            FUNC0("ACT_LAYER_TAP_EXT");
            break;
        case ACT_MACRO:
            FUNC0("ACT_MACRO");
            break;
        case ACT_COMMAND:
            FUNC0("ACT_COMMAND");
            break;
        case ACT_FUNCTION:
            FUNC0("ACT_FUNCTION");
            break;
        case ACT_SWAP_HANDS:
            FUNC0("ACT_SWAP_HANDS");
            break;
        default:
            FUNC0("UNKNOWN");
            break;
    }
    FUNC1("[%X:%02X]", action.kind.param >> 8, action.kind.param & 0xff);
}
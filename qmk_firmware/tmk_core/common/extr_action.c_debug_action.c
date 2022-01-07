
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int param; } ;
struct TYPE_5__ {TYPE_1__ kind; } ;
typedef TYPE_2__ action_t ;
 int dprint (char*) ;
 int dprintf (char*,int,int) ;

void debug_action(action_t action) {
    switch (action.kind.id) {
        case 135:
            dprint("ACT_LMODS");
            break;
        case 131:
            dprint("ACT_RMODS");
            break;
        case 134:
            dprint("ACT_LMODS_TAP");
            break;
        case 130:
            dprint("ACT_RMODS_TAP");
            break;
        case 128:
            dprint("ACT_USAGE");
            break;
        case 132:
            dprint("ACT_MOUSEKEY");
            break;
        case 139:
            dprint("ACT_LAYER");
            break;
        case 138:
            dprint("ACT_LAYER_MODS");
            break;
        case 137:
            dprint("ACT_LAYER_TAP");
            break;
        case 136:
            dprint("ACT_LAYER_TAP_EXT");
            break;
        case 133:
            dprint("ACT_MACRO");
            break;
        case 141:
            dprint("ACT_COMMAND");
            break;
        case 140:
            dprint("ACT_FUNCTION");
            break;
        case 129:
            dprint("ACT_SWAP_HANDS");
            break;
        default:
            dprint("UNKNOWN");
            break;
    }
    dprintf("[%X:%02X]", action.kind.param >> 8, action.kind.param & 0xff);
}

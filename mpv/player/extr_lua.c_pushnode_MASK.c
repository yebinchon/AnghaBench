#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* ba; TYPE_1__* list; int /*<<< orphan*/  flag; int /*<<< orphan*/  double_; int /*<<< orphan*/  int64; int /*<<< orphan*/  string; } ;
struct TYPE_9__ {int format; TYPE_3__ u; } ;
typedef  TYPE_4__ mpv_node ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int num; TYPE_4__* values; int /*<<< orphan*/ * keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  MPV_FORMAT_BYTE_ARRAY 135 
#define  MPV_FORMAT_DOUBLE 134 
#define  MPV_FORMAT_FLAG 133 
#define  MPV_FORMAT_INT64 132 
#define  MPV_FORMAT_NODE_ARRAY 131 
#define  MPV_FORMAT_NODE_MAP 130 
#define  MPV_FORMAT_NONE 129 
#define  MPV_FORMAT_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(lua_State *L, mpv_node *node)
{
    FUNC0(L, 6, "stack overflow");

    switch (node->format) {
    case MPV_FORMAT_STRING:
        FUNC7(L, node->u.string);
        break;
    case MPV_FORMAT_INT64:
        FUNC6(L, node->u.int64);
        break;
    case MPV_FORMAT_DOUBLE:
        FUNC6(L, node->u.double_);
        break;
    case MPV_FORMAT_NONE:
        FUNC5(L);
        break;
    case MPV_FORMAT_FLAG:
        FUNC3(L, node->u.flag);
        break;
    case MPV_FORMAT_NODE_ARRAY:
        FUNC2(L); // table
        FUNC1(L, LUA_REGISTRYINDEX, "ARRAY"); // table mt
        FUNC10(L, -2); // table
        for (int n = 0; n < node->u.list->num; n++) {
            FUNC11(L, &node->u.list->values[n]); // table value
            FUNC9(L, -2, n + 1); // table
        }
        break;
    case MPV_FORMAT_NODE_MAP:
        FUNC2(L); // table
        FUNC1(L, LUA_REGISTRYINDEX, "MAP"); // table mt
        FUNC10(L, -2); // table
        for (int n = 0; n < node->u.list->num; n++) {
            FUNC7(L, node->u.list->keys[n]); // table key
            FUNC11(L, &node->u.list->values[n]); // table key value
            FUNC8(L, -3);
        }
        break;
    case MPV_FORMAT_BYTE_ARRAY:
        FUNC4(L, node->u.ba->data, node->u.ba->size);
        break;
    default:
        // unknown value - what do we do?
        // for now, set a unique dummy value
        FUNC2(L); // table
        FUNC1(L, LUA_REGISTRYINDEX, "UNKNOWN_TYPE");
        FUNC10(L, -2); // table
        break;
    }
}
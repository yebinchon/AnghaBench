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
struct TYPE_8__ {char* string; TYPE_2__* list; TYPE_1__* ba; int /*<<< orphan*/  flag; int /*<<< orphan*/  double_; int /*<<< orphan*/  int64; } ;
struct TYPE_9__ {int format; TYPE_3__ u; } ;
typedef  TYPE_4__ mpv_node ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_7__ {int num; int /*<<< orphan*/ * keys; TYPE_4__* values; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
#define  MPV_FORMAT_BYTE_ARRAY 135 
#define  MPV_FORMAT_DOUBLE 134 
#define  MPV_FORMAT_FLAG 133 
#define  MPV_FORMAT_INT64 132 
#define  MPV_FORMAT_NODE_ARRAY 131 
#define  MPV_FORMAT_NODE_MAP 130 
#define  MPV_FORMAT_NONE 129 
#define  MPV_FORMAT_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(js_State *J, mpv_node *node)
{
    int len;
    switch (node->format) {
    case MPV_FORMAT_NONE:   FUNC4(J); break;
    case MPV_FORMAT_STRING: FUNC6(J, node->u.string); break;
    case MPV_FORMAT_INT64:  FUNC5(J, node->u.int64); break;
    case MPV_FORMAT_DOUBLE: FUNC5(J, node->u.double_); break;
    case MPV_FORMAT_FLAG:   FUNC2(J, node->u.flag); break;
    case MPV_FORMAT_BYTE_ARRAY:
        FUNC3(J, node->u.ba->data, node->u.ba->size);
        break;
    case MPV_FORMAT_NODE_ARRAY:
        FUNC0(J);
        len = node->u.list->num;
        for (int n = 0; n < len; n++) {
            FUNC9(J, &node->u.list->values[n]);
            FUNC7(J, -2, n);
        }
        break;
    case MPV_FORMAT_NODE_MAP:
        FUNC1(J);
        len = node->u.list->num;
        for (int n = 0; n < len; n++) {
            FUNC9(J, &node->u.list->values[n]);
            FUNC8(J, -2, node->u.list->keys[n]);
        }
        break;
    default:
        FUNC6(J, "[UNSUPPORTED_MPV_FORMAT]");
        break;
    }
}
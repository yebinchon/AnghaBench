
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* string; TYPE_2__* list; TYPE_1__* ba; int flag; int double_; int int64; } ;
struct TYPE_9__ {int format; TYPE_3__ u; } ;
typedef TYPE_4__ mpv_node ;
typedef int js_State ;
struct TYPE_7__ {int num; int * keys; TYPE_4__* values; } ;
struct TYPE_6__ {int size; int data; } ;
 int js_newarray (int *) ;
 int js_newobject (int *) ;
 int js_pushboolean (int *,int ) ;
 int js_pushlstring (int *,int ,int ) ;
 int js_pushnull (int *) ;
 int js_pushnumber (int *,int ) ;
 int js_pushstring (int *,char*) ;
 int js_setindex (int *,int,int) ;
 int js_setproperty (int *,int,int ) ;

__attribute__((used)) static void pushnode(js_State *J, mpv_node *node)
{
    int len;
    switch (node->format) {
    case 129: js_pushnull(J); break;
    case 128: js_pushstring(J, node->u.string); break;
    case 132: js_pushnumber(J, node->u.int64); break;
    case 134: js_pushnumber(J, node->u.double_); break;
    case 133: js_pushboolean(J, node->u.flag); break;
    case 135:
        js_pushlstring(J, node->u.ba->data, node->u.ba->size);
        break;
    case 131:
        js_newarray(J);
        len = node->u.list->num;
        for (int n = 0; n < len; n++) {
            pushnode(J, &node->u.list->values[n]);
            js_setindex(J, -2, n);
        }
        break;
    case 130:
        js_newobject(J);
        len = node->u.list->num;
        for (int n = 0; n < len; n++) {
            pushnode(J, &node->u.list->values[n]);
            js_setproperty(J, -2, node->u.list->keys[n]);
        }
        break;
    default:
        js_pushstring(J, "[UNSUPPORTED_MPV_FORMAT]");
        break;
    }
}

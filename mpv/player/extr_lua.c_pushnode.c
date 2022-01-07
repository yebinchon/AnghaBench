
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ba; TYPE_1__* list; int flag; int double_; int int64; int string; } ;
struct TYPE_9__ {int format; TYPE_3__ u; } ;
typedef TYPE_4__ mpv_node ;
typedef int lua_State ;
struct TYPE_7__ {int size; int data; } ;
struct TYPE_6__ {int num; TYPE_4__* values; int * keys; } ;


 int LUA_REGISTRYINDEX ;
 int luaL_checkstack (int *,int,char*) ;
 int lua_getfield (int *,int ,char*) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void pushnode(lua_State *L, mpv_node *node)
{
    luaL_checkstack(L, 6, "stack overflow");

    switch (node->format) {
    case 128:
        lua_pushstring(L, node->u.string);
        break;
    case 132:
        lua_pushnumber(L, node->u.int64);
        break;
    case 134:
        lua_pushnumber(L, node->u.double_);
        break;
    case 129:
        lua_pushnil(L);
        break;
    case 133:
        lua_pushboolean(L, node->u.flag);
        break;
    case 131:
        lua_newtable(L);
        lua_getfield(L, LUA_REGISTRYINDEX, "ARRAY");
        lua_setmetatable(L, -2);
        for (int n = 0; n < node->u.list->num; n++) {
            pushnode(L, &node->u.list->values[n]);
            lua_rawseti(L, -2, n + 1);
        }
        break;
    case 130:
        lua_newtable(L);
        lua_getfield(L, LUA_REGISTRYINDEX, "MAP");
        lua_setmetatable(L, -2);
        for (int n = 0; n < node->u.list->num; n++) {
            lua_pushstring(L, node->u.list->keys[n]);
            pushnode(L, &node->u.list->values[n]);
            lua_rawset(L, -3);
        }
        break;
    case 135:
        lua_pushlstring(L, node->u.ba->data, node->u.ba->size);
        break;
    default:


        lua_newtable(L);
        lua_getfield(L, LUA_REGISTRYINDEX, "UNKNOWN_TYPE");
        lua_setmetatable(L, -2);
        break;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {void* addr; } ;
typedef TYPE_1__ ip_addr_t ;


 int NODE_DBG (char*) ;
 int igmp_joingroup (TYPE_1__*,TYPE_1__*) ;
 int igmp_leavegroup (TYPE_1__*,TYPE_1__*) ;
 void* ipaddr_addr (char const*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_isstring (int *,int) ;
 scalar_t__ stricmp (char const*,char*) ;

__attribute__((used)) static int net_multicastJoinLeave( lua_State *L, int join) {
   size_t il;
   ip_addr_t multicast_addr;
   ip_addr_t if_addr;
   const char *multicast_ip;
   const char *if_ip;

   NODE_DBG("net_multicastJoin is called.\n");
   if(! lua_isstring(L,1) ) return luaL_error( L, "wrong arg type" );
   if_ip = luaL_checklstring( L, 1, &il );
   if (if_ip != ((void*)0))
   if ( if_ip[0] == '\0' || stricmp(if_ip,"any") == 0)
      {
    if_ip = "0.0.0.0";
    il = 7;
      }
   if (if_ip == ((void*)0) || il > 15 || il < 7) return luaL_error( L, "invalid if ip" );
   if_addr.addr = ipaddr_addr(if_ip);

   if(! lua_isstring(L,2) ) return luaL_error( L, "wrong arg type" );
   multicast_ip = luaL_checklstring( L, 2, &il );
   if (multicast_ip == ((void*)0) || il > 15 || il < 7) return luaL_error( L, "invalid multicast ip" );
   multicast_addr.addr = ipaddr_addr(multicast_ip);
   if (join)
   {
    igmp_joingroup(&if_addr, &multicast_addr);
   }
   else
   {
    igmp_leavegroup(&if_addr, &multicast_addr);
   }
   return 0;
}

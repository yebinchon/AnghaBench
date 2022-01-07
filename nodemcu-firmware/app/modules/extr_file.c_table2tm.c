
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* sec; void* min; void* hour; void* day; void* mon; void* year; } ;
typedef TYPE_1__ vfs_time ;
typedef int lua_State ;


 int FILE_TIMEDEF_DAY ;
 int FILE_TIMEDEF_HOUR ;
 int FILE_TIMEDEF_MIN ;
 int FILE_TIMEDEF_MON ;
 int FILE_TIMEDEF_SEC ;
 int FILE_TIMEDEF_YEAR ;
 void* luaL_optint (int *,int,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static void table2tm( lua_State *L, vfs_time *tm )
{
  int idx = lua_gettop( L );


  lua_getfield( L, idx, "year" );
  lua_getfield( L, idx, "mon" );
  lua_getfield( L, idx, "day" );
  lua_getfield( L, idx, "hour" );
  lua_getfield( L, idx, "min" );
  lua_getfield( L, idx, "sec" );

  tm->year = luaL_optint( L, ++idx, FILE_TIMEDEF_YEAR );
  tm->mon = luaL_optint( L, ++idx, FILE_TIMEDEF_MON );
  tm->day = luaL_optint( L, ++idx, FILE_TIMEDEF_DAY );
  tm->hour = luaL_optint( L, ++idx, FILE_TIMEDEF_HOUR );
  tm->min = luaL_optint( L, ++idx, FILE_TIMEDEF_MIN );
  tm->sec = luaL_optint( L, ++idx, FILE_TIMEDEF_SEC );


  lua_pop( L, 6 );
}

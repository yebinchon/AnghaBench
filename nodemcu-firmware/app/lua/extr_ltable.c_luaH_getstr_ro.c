
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef int TValue ;
typedef TYPE_2__ TString ;


 scalar_t__ LUA_MAX_ROTABLE_NAME ;
 int const* luaO_nilobject ;
 int const* luaR_findentry (void*,TYPE_2__*,int *) ;

const TValue *luaH_getstr_ro (void *t, TString *key) {
  if (!t || key->tsv.len>LUA_MAX_ROTABLE_NAME)
    return luaO_nilobject;
  return luaR_findentry(t, key, ((void*)0));
}

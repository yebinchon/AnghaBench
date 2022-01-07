
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int status; TYPE_6__* errorJmp; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_11__ {int (* panic ) (TYPE_1__*) ;} ;
struct TYPE_10__ {int status; } ;


 int EXIT_FAILURE ;
 TYPE_7__* G (TYPE_1__*) ;
 int LUAI_THROW (TYPE_1__*,TYPE_6__*) ;
 int cast_byte (int) ;
 int exit (int ) ;
 int resetstack (TYPE_1__*,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void luaD_throw(lua_State*L,int errcode){
if(L->errorJmp){
L->errorJmp->status=errcode;
LUAI_THROW(L,L->errorJmp);
}
else{
L->status=cast_byte(errcode);
if(G(L)->panic){
resetstack(L,errcode);
G(L)->panic(L);
}
exit(EXIT_FAILURE);
}
}

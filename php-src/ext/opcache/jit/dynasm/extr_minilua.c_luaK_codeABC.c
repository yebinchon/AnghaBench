
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ls; } ;
struct TYPE_5__ {int lastline; } ;
typedef int OpCode ;
typedef TYPE_2__ FuncState ;


 int CREATE_ABC (int ,int,int,int) ;
 int luaK_code (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int luaK_codeABC(FuncState*fs,OpCode o,int a,int b,int c){
return luaK_code(fs,CREATE_ABC(o,a,b,c),fs->ls->lastline);
}

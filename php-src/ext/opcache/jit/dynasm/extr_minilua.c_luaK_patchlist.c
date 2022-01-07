
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pc; } ;
typedef TYPE_1__ FuncState ;


 int luaK_patchtohere (TYPE_1__*,int) ;
 int patchlistaux (TYPE_1__*,int,int,int,int) ;

__attribute__((used)) static void luaK_patchlist(FuncState*fs,int list,int target){
if(target==fs->pc)
luaK_patchtohere(fs,list);
else{
patchlistaux(fs,list,target,((1<<8)-1),target);
}
}

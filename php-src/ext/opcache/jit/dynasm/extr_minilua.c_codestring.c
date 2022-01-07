
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_3__ {int fs; } ;
typedef int TString ;
typedef TYPE_1__ LexState ;


 int VK ;
 int init_exp (int *,int ,int ) ;
 int luaK_stringK (int ,int *) ;

__attribute__((used)) static void codestring(LexState*ls,expdesc*e,TString*s){
init_exp(e,VK,luaK_stringK(ls->fs,s));
}

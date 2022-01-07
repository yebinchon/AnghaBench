
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ls; TYPE_1__* f; int L; } ;
struct TYPE_4__ {int linedefined; } ;
typedef TYPE_2__ FuncState ;


 char* luaO_pushfstring (int ,char*,int,...) ;
 int luaX_lexerror (int ,char const*,int ) ;

__attribute__((used)) static void errorlimit(FuncState*fs,int limit,const char*what){
const char*msg=(fs->f->linedefined==0)?
luaO_pushfstring(fs->L,"main function has more than %d %s",limit,what):
luaO_pushfstring(fs->L,"function at line %d has more than %d %s",
fs->f->linedefined,limit,what);
luaX_lexerror(fs->ls,msg,0);
}

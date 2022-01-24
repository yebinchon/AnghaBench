#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int extraline; int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ LoadF ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  getF ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(lua_State*L,const char*filename){
LoadF lf;
int status,readstatus;
int c;
int fnameindex=FUNC6(L)+1;
lf.extraline=0;
if(filename==NULL){
FUNC9(L,"=stdin");
lf.f=stdin;
}
else{
FUNC8(L,"@%s",filename);
lf.f=FUNC3(filename,"r");
if(lf.f==NULL)return FUNC0(L,"open",fnameindex);
}
c=FUNC5(lf.f);
if(c=='#'){
lf.extraline=1;
while((c=FUNC5(lf.f))!=EOF&&c!='\n');
if(c=='\n')c=FUNC5(lf.f);
}
if(c=="\033Lua"[0]&&filename){
lf.f=FUNC4(filename,"rb",lf.f);
if(lf.f==NULL)return FUNC0(L,"reopen",fnameindex);
while((c=FUNC5(lf.f))!=EOF&&c!="\033Lua"[0]);
lf.extraline=0;
}
FUNC13(c,lf.f);
status=FUNC7(L,getF,&lf,FUNC12(L,-1));
readstatus=FUNC2(lf.f);
if(filename)FUNC1(lf.f);
if(readstatus){
FUNC11(L,fnameindex);
return FUNC0(L,"read",fnameindex);
}
FUNC10(L,fnameindex);
return status;
}
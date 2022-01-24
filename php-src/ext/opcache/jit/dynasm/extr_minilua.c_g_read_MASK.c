#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(lua_State*L,FILE*f,int first){
int nargs=FUNC5(L)-1;
int success;
int n;
FUNC0(f);
if(nargs==0){
success=FUNC13(L,f);
n=first+1;
}
else{
FUNC4(L,nargs+20,"too many arguments");
success=1;
for(n=first;nargs--&&success;n++){
if(FUNC10(L,n)==3){
size_t l=(size_t)FUNC8(L,n);
success=(l==0)?FUNC15(L,f):FUNC12(L,f,l);
}
else{
const char*p=FUNC9(L,n);
FUNC2(L,p&&p[0]=='*',n,"invalid option");
switch(p[1]){
case'n':
success=FUNC14(L,f);
break;
case'l':
success=FUNC13(L,f);
break;
case'a':
FUNC12(L,f,~((size_t)0));
success=1;
break;
default:
return FUNC3(L,n,"invalid format");
}
}
}
}
if(FUNC1(f))
return FUNC11(L,0,NULL);
if(!success){
FUNC6(L,1);
FUNC7(L);
}
return n-first;
}
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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZ ; 
 size_t FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State*L,FILE*f,size_t n){
size_t rlen;
size_t nr;
luaL_Buffer b;
FUNC2(L,&b);
rlen=BUFSIZ;
do{
char*p=FUNC3(&b);
if(rlen>n)rlen=n;
nr=FUNC0(p,sizeof(char),rlen,f);
FUNC1(&b,nr);
n-=nr;
}while(n>0&&nr==rlen);
FUNC4(&b);
return(n==0||FUNC5(L,-1)>0);
}
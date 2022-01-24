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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*,int,int,size_t) ; 

__attribute__((used)) static void*FUNC2(lua_State*L,void*block,int*size,size_t size_elems,
int limit,const char*errormsg){
void*newblock;
int newsize;
if(*size>=limit/2){
if(*size>=limit)
FUNC0(L,errormsg);
newsize=limit;
}
else{
newsize=(*size)*2;
if(newsize<4)
newsize=4;
}
newblock=FUNC1(L,block,*size,newsize,size_elems);
*size=newsize;
return newblock;
}
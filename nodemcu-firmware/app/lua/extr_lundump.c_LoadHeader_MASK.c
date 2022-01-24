#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lua_Number ;
struct TYPE_4__ {int swap; char numsize; int toflt; } ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LUAC_HEADERSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(LoadState* S)
{
 char h[LUAC_HEADERSIZE];
 char s[LUAC_HEADERSIZE];
 int intck = (((lua_Number)0.5)==0); /* 0=float, 1=int */
 FUNC2(h);
 FUNC1(S,s,LUAC_HEADERSIZE);
 S->swap=(s[6]!=h[6]); s[6]=h[6]; /* Check if byte-swapping is needed  */
 S->numsize=h[10]=s[10]; /* length of lua_Number */
 S->toflt=(s[11]>intck); /* check if conversion from int lua_Number to flt is needed */
 if(S->toflt) s[11]=h[11];
 FUNC0 (FUNC3(h,s,LUAC_HEADERSIZE)!=0, "bad header");
}
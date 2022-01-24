#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_9__ {int token; } ;
struct TYPE_10__ {int linenumber; int /*<<< orphan*/  fs; TYPE_1__ t; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  TK_NAME 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(LexState*ls,expdesc*v){
switch(ls->t.token){
case'(':{
int line=ls->linenumber;
FUNC3(ls);
FUNC1(ls,v);
FUNC0(ls,')','(',line);
FUNC2(ls->fs,v);
return;
}
case TK_NAME:{
FUNC5(ls,v);
return;
}
default:{
FUNC4(ls,"unexpected symbol");
return;
}
}
}
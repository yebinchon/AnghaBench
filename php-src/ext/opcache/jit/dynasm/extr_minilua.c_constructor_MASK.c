#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct ConsControl {scalar_t__ nh; scalar_t__ na; int /*<<< orphan*/  v; int /*<<< orphan*/ * t; scalar_t__ tostore; } ;
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_21__ {TYPE_3__* f; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_17__ {char token; } ;
struct TYPE_20__ {int linenumber; TYPE_2__ lookahead; TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_19__ {int /*<<< orphan*/ * code; } ;
typedef  TYPE_4__ LexState ;
typedef  TYPE_5__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_NEWTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TK_NAME 128 
 int /*<<< orphan*/  VRELOCABLE ; 
 int /*<<< orphan*/  VVOID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct ConsControl*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct ConsControl*) ; 
 scalar_t__ FUNC13 (TYPE_4__*,char) ; 

__attribute__((used)) static void FUNC14(LexState*ls,expdesc*t){
FuncState*fs=ls->fs;
int line=ls->linenumber;
int pc=FUNC8(fs,OP_NEWTABLE,0,0,0);
struct ConsControl cc;
cc.na=cc.nh=cc.tostore=0;
cc.t=t;
FUNC5(t,VRELOCABLE,pc);
FUNC5(&cc.v,VVOID,0);
FUNC9(ls->fs,t);
FUNC3(ls,'{');
do{
if(ls->t.token=='}')break;
FUNC4(fs,&cc);
switch(ls->t.token){
case TK_NAME:{
FUNC11(ls);
if(ls->lookahead.token!='=')
FUNC7(ls,&cc);
else
FUNC12(ls,&cc);
break;
}
case'[':{
FUNC12(ls,&cc);
break;
}
default:{
FUNC7(ls,&cc);
break;
}
}
}while(FUNC13(ls,',')||FUNC13(ls,';'));
FUNC2(ls,'}','{',line);
FUNC6(fs,&cc);
FUNC0(fs->f->code[pc],FUNC10(cc.na));
FUNC1(fs->f->code[pc],FUNC10(cc.nh));
}
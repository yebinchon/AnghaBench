#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ token; } ;
struct TYPE_9__ {TYPE_1__ t; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ TK_ELSE ; 
 scalar_t__ TK_ELSEIF ; 
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_IF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(LexState*ls,int line){
FuncState*fs=ls->fs;
int flist;
int escapelist=(-1);
flist=FUNC6(ls);
while(ls->t.token==TK_ELSEIF){
FUNC2(fs,&escapelist,FUNC3(fs));
FUNC4(fs,flist);
flist=FUNC6(ls);
}
if(ls->t.token==TK_ELSE){
FUNC2(fs,&escapelist,FUNC3(fs));
FUNC4(fs,flist);
FUNC5(ls);
FUNC0(ls);
}
else
FUNC2(fs,&escapelist,flist);
FUNC4(fs,escapelist);
FUNC1(ls,TK_END,TK_IF,line);
}
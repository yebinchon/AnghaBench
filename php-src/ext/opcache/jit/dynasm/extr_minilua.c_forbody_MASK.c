#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  OP_FORLOOP ; 
 int /*<<< orphan*/  OP_FORPREP ; 
 int /*<<< orphan*/  OP_TFORLOOP ; 
 int /*<<< orphan*/  TK_DO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(LexState*ls,int base,int line,int nvars,int isnum){
BlockCnt bl;
FuncState*fs=ls->fs;
int prep,endfor;
FUNC0(ls,3);
FUNC2(ls,TK_DO);
prep=isnum?FUNC6(fs,OP_FORPREP,base,(-1)):FUNC8(fs);
FUNC3(fs,&bl,0);
FUNC0(ls,nvars);
FUNC11(fs,nvars);
FUNC1(ls);
FUNC4(fs);
FUNC10(fs,prep);
endfor=(isnum)?FUNC6(fs,OP_FORLOOP,base,(-1)):
FUNC5(fs,OP_TFORLOOP,base,0,nvars);
FUNC7(fs,line);
FUNC9(fs,(isnum?endfor:FUNC8(fs)),prep+1);
}
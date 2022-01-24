#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ k; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_21__ {int nactvar; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_20__ {TYPE_1__ t; TYPE_4__* fs; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_TAILCALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VCALL ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(LexState*ls){
FuncState*fs=ls->fs;
expdesc e;
int first,nret;
FUNC9(ls);
if(FUNC1(ls->t.token)||ls->t.token==';')
first=nret=0;
else{
nret=FUNC2(ls,&e);
if(FUNC4(e.k)){
FUNC8(fs,&e);
if(e.k==VCALL&&nret==1){
FUNC0(FUNC3(fs,&e),OP_TAILCALL);
}
first=fs->nactvar;
nret=(-1);
}
else{
if(nret==1)
first=FUNC5(fs,&e);
else{
FUNC6(fs,&e);
first=fs->nactvar;
}
}
}
FUNC7(fs,first,nret);
}
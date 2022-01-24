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
typedef  int /*<<< orphan*/  expdesc ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int BinOpr ;

/* Variables and functions */
#define  OPR_ADD 136 
#define  OPR_AND 135 
#define  OPR_CONCAT 134 
#define  OPR_DIV 133 
#define  OPR_MOD 132 
#define  OPR_MUL 131 
#define  OPR_OR 130 
#define  OPR_POW 129 
#define  OPR_SUB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(FuncState*fs,BinOpr op,expdesc*v){
switch(op){
case OPR_AND:{
FUNC4(fs,v);
break;
}
case OPR_OR:{
FUNC3(fs,v);
break;
}
case OPR_CONCAT:{
FUNC2(fs,v);
break;
}
case OPR_ADD:case OPR_SUB:case OPR_MUL:case OPR_DIV:
case OPR_MOD:case OPR_POW:{
if(!FUNC0(v))FUNC1(fs,v);
break;
}
default:{
FUNC1(fs,v);
break;
}
}
}
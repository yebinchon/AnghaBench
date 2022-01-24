#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sizecode; int /*<<< orphan*/ * p; int /*<<< orphan*/ * k; int /*<<< orphan*/ * upvalues; int /*<<< orphan*/  sizeupvalues; scalar_t__* code; } ;
typedef  TYPE_1__ Proto ;
typedef  size_t OpCode ;
typedef  scalar_t__ Instruction ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 size_t FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
#define  OP_ADD 151 
#define  OP_CLOSURE 150 
#define  OP_DIV 149 
#define  OP_EQ 148 
#define  OP_FORLOOP 147 
#define  OP_FORPREP 146 
#define  OP_GETGLOBAL 145 
#define  OP_GETTABLE 144 
#define  OP_GETUPVAL 143 
#define  OP_JMP 142 
#define  OP_LE 141 
#define  OP_LOADK 140 
#define  OP_LT 139 
#define  OP_MUL 138 
#define  OP_POW 137 
#define  OP_SELF 136 
#define  OP_SETGLOBAL 135 
#define  OP_SETLIST 134 
#define  OP_SETTABLE 133 
#define  OP_SETUPVAL 132 
#define  OP_SUB 131 
 int /*<<< orphan*/  OpArgK ; 
 int /*<<< orphan*/  OpArgN ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (size_t) ; 
 int FUNC12 (size_t) ; 
 int FUNC13 (TYPE_1__ const*,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
#define  iABC 130 
#define  iABx 129 
#define  iAsBx 128 
 char** luaP_opnames ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(const Proto* f)
{
 const Instruction* code=f->code;
 int pc,n=f->sizecode;
 for (pc=0; pc<n; pc++)
 {
  Instruction i=code[pc];
  OpCode o=FUNC5(i);
  int a=FUNC0(i);
  int b=FUNC1(i);
  int c=FUNC3(i);
  int bx=FUNC2(i);
  int sbx=FUNC4(i);
  int line=FUNC13(f,pc);
  FUNC15("\t%d\t",pc+1);
  if (line>0) FUNC15("[%d]\t",line); else FUNC15("[-]\t");
  FUNC15("%-9s\t",luaP_opnames[o]);
  switch (FUNC12(o))
  {
   case iABC:
    FUNC15("%d",a);
    if (FUNC10(o)!=OpArgN) FUNC15(" %d",FUNC7(b) ? (-1-FUNC6(b)) : b);
    if (FUNC11(o)!=OpArgN) FUNC15(" %d",FUNC7(c) ? (-1-FUNC6(c)) : c);
    break;
   case iABx:
    if (FUNC10(o)==OpArgK) FUNC15("%d %d",a,-1-bx); else FUNC15("%d %d",a,bx);
    break;
   case iAsBx:
    if (o==OP_JMP) FUNC15("%d",sbx); else FUNC15("%d %d",a,sbx);
    break;
  }
  switch (o)
  {
   case OP_LOADK:
    FUNC15("\t; "); FUNC8(f,bx);
    break;
   case OP_GETUPVAL:
   case OP_SETUPVAL:
    FUNC15("\t; %s", (f->sizeupvalues>0) ? FUNC14(f->upvalues[b]) : "-");
    break;
   case OP_GETGLOBAL:
   case OP_SETGLOBAL:
    FUNC15("\t; %s",FUNC16(&f->k[bx]));
    break;
   case OP_GETTABLE:
   case OP_SELF:
    if (FUNC7(c)) { FUNC15("\t; "); FUNC8(f,FUNC6(c)); }
    break;
   case OP_SETTABLE:
   case OP_ADD:
   case OP_SUB:
   case OP_MUL:
   case OP_DIV:
   case OP_POW:
   case OP_EQ:
   case OP_LT:
   case OP_LE:
    if (FUNC7(b) || FUNC7(c))
    {
     FUNC15("\t; ");
     if (FUNC7(b)) FUNC8(f,FUNC6(b)); else FUNC15("-");
     FUNC15(" ");
     if (FUNC7(c)) FUNC8(f,FUNC6(c)); else FUNC15("-");
    }
    break;
   case OP_JMP:
   case OP_FORLOOP:
   case OP_FORPREP:
    FUNC15("\t; to %d",sbx+pc+2);
    break;
   case OP_CLOSURE:
    FUNC15("\t; %p",FUNC9(f->p[bx]));
    break;
   case OP_SETLIST:
    if (c==0) FUNC15("\t; %d",(int)code[++pc]);
    else FUNC15("\t; %d",c);
    break;
   default:
    break;
  }
  FUNC15("\n");
 }
}
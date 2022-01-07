
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizecode; int * p; int * k; int * upvalues; int sizeupvalues; scalar_t__* code; } ;
typedef TYPE_1__ Proto ;
typedef size_t OpCode ;
typedef scalar_t__ Instruction ;


 int GETARG_A (scalar_t__) ;
 int GETARG_B (scalar_t__) ;
 int GETARG_Bx (scalar_t__) ;
 int GETARG_C (scalar_t__) ;
 int GETARG_sBx (scalar_t__) ;
 size_t GET_OPCODE (scalar_t__) ;
 int INDEXK (int) ;
 int ISK (int) ;
 int OpArgK ;
 int OpArgN ;
 int PrintConstant (TYPE_1__ const*,int) ;
 int VOID (int ) ;
 int getBMode (size_t) ;
 int getCMode (size_t) ;
 int getOpMode (size_t) ;
 int getline (TYPE_1__ const*,int) ;
 char* getstr (int ) ;



 char** luaP_opnames ;
 int printf (char*,...) ;
 char* svalue (int *) ;

__attribute__((used)) static void PrintCode(const Proto* f)
{
 const Instruction* code=f->code;
 int pc,n=f->sizecode;
 for (pc=0; pc<n; pc++)
 {
  Instruction i=code[pc];
  OpCode o=GET_OPCODE(i);
  int a=GETARG_A(i);
  int b=GETARG_B(i);
  int c=GETARG_C(i);
  int bx=GETARG_Bx(i);
  int sbx=GETARG_sBx(i);
  int line=getline(f,pc);
  printf("\t%d\t",pc+1);
  if (line>0) printf("[%d]\t",line); else printf("[-]\t");
  printf("%-9s\t",luaP_opnames[o]);
  switch (getOpMode(o))
  {
   case 130:
    printf("%d",a);
    if (getBMode(o)!=OpArgN) printf(" %d",ISK(b) ? (-1-INDEXK(b)) : b);
    if (getCMode(o)!=OpArgN) printf(" %d",ISK(c) ? (-1-INDEXK(c)) : c);
    break;
   case 129:
    if (getBMode(o)==OpArgK) printf("%d %d",a,-1-bx); else printf("%d %d",a,bx);
    break;
   case 128:
    if (o==142) printf("%d",sbx); else printf("%d %d",a,sbx);
    break;
  }
  switch (o)
  {
   case 140:
    printf("\t; "); PrintConstant(f,bx);
    break;
   case 143:
   case 132:
    printf("\t; %s", (f->sizeupvalues>0) ? getstr(f->upvalues[b]) : "-");
    break;
   case 145:
   case 135:
    printf("\t; %s",svalue(&f->k[bx]));
    break;
   case 144:
   case 136:
    if (ISK(c)) { printf("\t; "); PrintConstant(f,INDEXK(c)); }
    break;
   case 133:
   case 151:
   case 131:
   case 138:
   case 149:
   case 137:
   case 148:
   case 139:
   case 141:
    if (ISK(b) || ISK(c))
    {
     printf("\t; ");
     if (ISK(b)) PrintConstant(f,INDEXK(b)); else printf("-");
     printf(" ");
     if (ISK(c)) PrintConstant(f,INDEXK(c)); else printf("-");
    }
    break;
   case 142:
   case 147:
   case 146:
    printf("\t; to %d",sbx+pc+2);
    break;
   case 150:
    printf("\t; %p",VOID(f->p[bx]));
    break;
   case 134:
    if (c==0) printf("\t; %d",(int)code[++pc]);
    else printf("\t; %d",c);
    break;
   default:
    break;
  }
  printf("\n");
 }
}

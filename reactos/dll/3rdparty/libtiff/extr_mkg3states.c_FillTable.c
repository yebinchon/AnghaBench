
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proto {int val; int code; } ;
struct TYPE_3__ {int State; int Width; int Param; } ;
typedef TYPE_1__ TIFFFaxTabEnt ;



__attribute__((used)) static void
FillTable(TIFFFaxTabEnt *T, int Size, struct proto *P, int State)
{
    int limit = 1 << Size;

    while (P->val) {
 int width = P->val & 15;
 int param = P->val >> 4;
 int incr = 1 << width;
 int code;
 for (code = P->code; code < limit; code += incr) {
     TIFFFaxTabEnt *E = T+code;
     E->State = State;
     E->Width = width;
     E->Param = param;
 }
 P++;
    }
}

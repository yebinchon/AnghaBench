
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int name; } ;
typedef TYPE_1__ RAnalReilArg ;
typedef int RAnalEsil ;


 int free (char*) ;
 int r_anal_esil_push (int *,char*) ;
 char* r_str_newf (char*,int ,int ) ;

void reil_push_arg(RAnalEsil *esil, RAnalReilArg *op) {
 char *s = r_str_newf ("%s:%d", op->name, op->size);
 r_anal_esil_push (esil, s);
 free (s);
}

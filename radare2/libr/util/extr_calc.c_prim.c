
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int curr_tok; void* number_value; int string_value; } ;
typedef void* RNumCalcValue ;
typedef TYPE_1__ RNumCalc ;
typedef int RNum ;


 void* Naddi (void*,int) ;
 void* Nneg (void*) ;
 void* Norr (void*,void*) ;
 void* Nset (int ) ;
 void* Nsub (void*,void*) ;
 int Nsubi (void*,int) ;
 int error (int *,TYPE_1__*,char*) ;
 void* expr (int *,TYPE_1__*,int) ;
 int get_token (int *,TYPE_1__*) ;
 int r_num_get (int *,int ) ;
 int r_str_trim (int ) ;

__attribute__((used)) static RNumCalcValue prim(RNum *num, RNumCalc *nc, int get) {
 RNumCalcValue v = {0};
 if (get) {
  get_token (num, nc);
 }
 switch (nc->curr_tok) {
 case 137:
  v = nc->number_value;
  get_token (num, nc);
  return v;
 case 139:


  r_str_trim (nc->string_value);
  v = Nset (r_num_get (num, nc->string_value));
  get_token (num, nc);
  if (nc->curr_tok == 148) {
   v = expr (num, nc, 1);
  }
  if (nc->curr_tok == 144) {
   Naddi (v, 1);
  }
  if (nc->curr_tok == 147) {
   Nsubi (v, 1);
  }
  return v;
 case 138:
  get_token (num, nc);
  return Nneg (nc->number_value);
 case 144:
  return Naddi (prim (num, nc, 1), 1);
 case 147:
  return Naddi (prim (num, nc, 1), -1);
 case 136:
  return Norr (v, prim (num, nc, 1));
 case 142:
  return Nsub (v, prim (num, nc, 1));
 case 143:
  v = expr (num, nc, 1);
  if (nc->curr_tok == 133) {
   get_token (num, nc);
  } else {
   error (num, nc, " ')' expected");
  }
 case 145:
 case 128:
 case 149:
 case 135:
 case 141:
 case 140:
 case 146:
 case 134:
 case 148:
 case 133:
 case 130:
 case 129:
 case 132:
 case 131:
  return v;

 }
 return v;
}

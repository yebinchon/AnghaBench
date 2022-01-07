
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curr_tok; } ;
typedef int RNumCalcValue ;
typedef TYPE_1__ RNumCalc ;
typedef int RNum ;


 int Nadd (int ,int ) ;
 int Nand (int ,int ) ;
 int Norr (int ,int ) ;
 int Nrol (int ,int ) ;
 int Nror (int ,int ) ;
 int Nshl (int ,int ) ;
 int Nshr (int ,int ) ;
 int Nsub (int ,int ) ;
 int Nxor (int ,int ) ;
 int term (int *,TYPE_1__*,int) ;

__attribute__((used)) static RNumCalcValue expr(RNum *num, RNumCalc *nc, int get) {
 RNumCalcValue left = term (num, nc, get);
 for (;;) {
  switch (nc->curr_tok) {
  case 130: left = Nshl (left, term (num, nc, 1)); break;
  case 129: left = Nshr (left, term (num, nc, 1)); break;
  case 132: left = Nrol (left, term (num, nc, 1)); break;
  case 131: left = Nror (left, term (num, nc, 1)); break;
  case 133: left = Nadd (left, term (num, nc, 1)); break;
  case 135: left = Nsub (left, term (num, nc, 1)); break;
  case 128: left = Nxor (left, term (num, nc, 1)); break;
  case 134: left = Norr (left, term (num, nc, 1)); break;
  case 136: left = Nand (left, term (num, nc, 1)); break;
  default:
   return left;
  }
 }
 return left;
}

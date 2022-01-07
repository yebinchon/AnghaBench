
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {double n; double d; } ;
typedef TYPE_1__ RNumCalcValue ;
typedef int RNumCalc ;
typedef int RNum ;


 scalar_t__ IS_DIGIT (char) ;
 TYPE_1__ Nset (int ) ;
 TYPE_1__ Nsetf (double) ;
 int R_NUMCALC_STRSZ ;
 scalar_t__ cin_get (int *,int *,char*) ;
 int cin_putback (int *,int *,char) ;
 int isalnum (int ) ;
 int r_num_get (int *,char*) ;
 int sscanf (char*,char*,double*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static int cin_get_num(RNum *num, RNumCalc *nc, RNumCalcValue *n) {
 double d;
 char str[R_NUMCALC_STRSZ + 1];
 int i = 0;
 char c;
 str[0] = 0;
 while (cin_get (num, nc, &c)) {
  if (c != '_' && c!=':' && c!='.' && !isalnum ((ut8)c)) {
   cin_putback (num, nc, c);
   break;
  }
  if (i < R_NUMCALC_STRSZ) {
   str[i++] = c;
  }
 }
 str[i] = 0;
 *n = Nset (r_num_get (num, str));
 if (IS_DIGIT (*str) && strchr (str, '.')) {
  if (sscanf (str, "%lf", &d) < 1) {
   return 0;
  }
  if (n->n < d) {
   *n = Nsetf (d);
  }
  n->d = d;
 }
 return 1;
}

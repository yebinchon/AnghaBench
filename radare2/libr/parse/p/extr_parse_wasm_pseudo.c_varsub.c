
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_4__ {int anal; } ;
struct TYPE_5__ {TYPE_1__ analb; } ;
typedef TYPE_2__ RParse ;
typedef int RAnalFunction ;


 int free (char*) ;
 char* get_fcn_name (int ,int ) ;
 int r_num_get (int *,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool varsub(RParse *p, RAnalFunction *f, ut64 addr, int oplen, char *data, char *str, int len) {
 char *fcn_name = ((void*)0);
 str[0] = 0;
 if (!strncmp (data, "call ", 5)) {
  ut32 fcn_id = (ut32) r_num_get (((void*)0), data + 5);
  if (!(fcn_name = get_fcn_name (p->analb.anal, fcn_id))) {
   return 0;
  }
  snprintf (str, len, "call sym.%s", fcn_name);
  free (fcn_name);
  return 1;
 }
 return 0;
}

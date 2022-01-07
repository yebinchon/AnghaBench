
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_t {int type; int const shift; int const mask; int * fmt; } ;


 int sprintf (char*,char*,int) ;
 int strcat (char*,int ) ;

__attribute__((used)) static void arg(char* s, int const cmd, struct arg_t const* arg, int val) {
  if (arg->type == 3) {
    strcat(s, arg->fmt[(cmd >> arg->shift) & arg->mask]);
  } else {
    if (arg->type == 1)
      sprintf(s, "%02X", val & 0xff);
    else if (arg->type == 2)
      sprintf(s, "%04X", val);
  }
}

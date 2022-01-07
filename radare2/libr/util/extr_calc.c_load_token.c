
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* calc_buf; int * calc_err; int calc_len; scalar_t__ calc_i; } ;
typedef TYPE_1__ RNumCalc ;
typedef int RNum ;


 int strlen (char const*) ;

__attribute__((used)) static void load_token(RNum *num, RNumCalc *nc, const char *s) {
 nc->calc_i = 0;
 nc->calc_len = strlen (s);
 nc->calc_buf = s;
 nc->calc_err = ((void*)0);
}

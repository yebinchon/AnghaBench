
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* calc_err; int errors; } ;
typedef TYPE_1__ RNumCalc ;
typedef int RNum ;



__attribute__((used)) static void error(RNum *num, RNumCalc *nc, const char *s) {
 nc->errors++;
 nc->calc_err = s;

}

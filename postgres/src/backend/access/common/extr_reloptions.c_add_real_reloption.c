
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double default_val; double min; double max; } ;
typedef TYPE_1__ relopt_real ;
typedef int relopt_gen ;
typedef int bits32 ;
typedef int LOCKMODE ;


 int RELOPT_TYPE_REAL ;
 int add_reloption (int *) ;
 scalar_t__ allocate_reloption (int ,int ,char const*,char const*,int ) ;

void
add_real_reloption(bits32 kinds, const char *name, const char *desc, double default_val,
       double min_val, double max_val, LOCKMODE lockmode)
{
 relopt_real *newoption;

 newoption = (relopt_real *) allocate_reloption(kinds, RELOPT_TYPE_REAL,
               name, desc, lockmode);
 newoption->default_val = default_val;
 newoption->min = min_val;
 newoption->max = max_val;

 add_reloption((relopt_gen *) newoption);
}

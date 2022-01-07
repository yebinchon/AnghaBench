
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_val; int min; int max; } ;
typedef TYPE_1__ relopt_int ;
typedef int relopt_gen ;
typedef int bits32 ;
typedef int LOCKMODE ;


 int RELOPT_TYPE_INT ;
 int add_reloption (int *) ;
 scalar_t__ allocate_reloption (int ,int ,char const*,char const*,int ) ;

void
add_int_reloption(bits32 kinds, const char *name, const char *desc, int default_val,
      int min_val, int max_val, LOCKMODE lockmode)
{
 relopt_int *newoption;

 newoption = (relopt_int *) allocate_reloption(kinds, RELOPT_TYPE_INT,
              name, desc, lockmode);
 newoption->default_val = default_val;
 newoption->min = min_val;
 newoption->max = max_val;

 add_reloption((relopt_gen *) newoption);
}

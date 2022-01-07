
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int relopt_gen ;
struct TYPE_2__ {int default_val; } ;
typedef TYPE_1__ relopt_bool ;
typedef int bits32 ;
typedef int LOCKMODE ;


 int RELOPT_TYPE_BOOL ;
 int add_reloption (int *) ;
 scalar_t__ allocate_reloption (int ,int ,char const*,char const*,int ) ;

void
add_bool_reloption(bits32 kinds, const char *name, const char *desc,
       bool default_val, LOCKMODE lockmode)
{
 relopt_bool *newoption;

 newoption = (relopt_bool *) allocate_reloption(kinds, RELOPT_TYPE_BOOL,
               name, desc, lockmode);
 newoption->default_val = default_val;

 add_reloption((relopt_gen *) newoption);
}

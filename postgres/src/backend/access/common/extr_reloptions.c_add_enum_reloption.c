
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int relopt_gen ;
typedef int relopt_enum_elt_def ;
struct TYPE_2__ {int default_val; char const* detailmsg; int * members; } ;
typedef TYPE_1__ relopt_enum ;
typedef int bits32 ;
typedef int LOCKMODE ;


 int RELOPT_TYPE_ENUM ;
 int add_reloption (int *) ;
 scalar_t__ allocate_reloption (int ,int ,char const*,char const*,int ) ;

void
add_enum_reloption(bits32 kinds, const char *name, const char *desc,
       relopt_enum_elt_def *members, int default_val,
       const char *detailmsg, LOCKMODE lockmode)
{
 relopt_enum *newoption;

 newoption = (relopt_enum *) allocate_reloption(kinds, RELOPT_TYPE_ENUM,
               name, desc, lockmode);
 newoption->members = members;
 newoption->default_val = default_val;
 newoption->detailmsg = detailmsg;

 add_reloption((relopt_gen *) newoption);
}

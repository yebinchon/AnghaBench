
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int relopt_kind ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int RELOPT_KIND_MAX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int last_assigned_kind ;

relopt_kind
add_reloption_kind(void)
{

 if (last_assigned_kind >= RELOPT_KIND_MAX)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("user-defined relation parameter types limit exceeded")));
 last_assigned_kind <<= 1;
 return (relopt_kind) last_assigned_kind;
}

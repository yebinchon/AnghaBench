
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FormData_pg_attribute ;
typedef int AttrNumber ;


 int ERROR ;
 int const** SysAtt ;
 int elog (int ,char*,int) ;
 scalar_t__ lengthof (int const**) ;

const FormData_pg_attribute *
SystemAttributeDefinition(AttrNumber attno)
{
 if (attno >= 0 || attno < -(int) lengthof(SysAtt))
  elog(ERROR, "invalid system attribute number %d", attno);
 return SysAtt[-attno - 1];
}

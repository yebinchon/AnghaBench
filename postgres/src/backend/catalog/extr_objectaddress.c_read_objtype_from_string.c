
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_type; int tm_name; } ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 TYPE_1__* ObjectTypeMap ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int lengthof (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

int
read_objtype_from_string(const char *objtype)
{
 int i;

 for (i = 0; i < lengthof(ObjectTypeMap); i++)
 {
  if (strcmp(ObjectTypeMap[i].tm_name, objtype) == 0)
   return ObjectTypeMap[i].tm_type;
 }
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
    errmsg("unrecognized object type \"%s\"", objtype)));

 return -1;
}

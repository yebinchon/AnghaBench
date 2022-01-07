
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;


 int OBJECT_FOREIGN_TABLE ;
 int OBJECT_INDEX ;
 int OBJECT_MATVIEW ;
 int OBJECT_SEQUENCE ;
 int OBJECT_TABLE ;
 int OBJECT_VIEW ;
ObjectType
get_relkind_objtype(char relkind)
{
 switch (relkind)
 {
  case 131:
  case 132:
   return OBJECT_TABLE;
  case 135:
  case 133:
   return OBJECT_INDEX;
  case 130:
   return OBJECT_SEQUENCE;
  case 128:
   return OBJECT_VIEW;
  case 134:
   return OBJECT_MATVIEW;
  case 136:
   return OBJECT_FOREIGN_TABLE;
  case 129:
   return OBJECT_TABLE;
  default:

   return OBJECT_TABLE;
 }
}

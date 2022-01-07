
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;


 int ERROR ;
 int InvalidOid ;


 int elog (int ,char*,int) ;
 int intVal (int *) ;
 int nodeTag (int *) ;
 int oidin_subr (int ,int *) ;
 int strVal (int *) ;

Oid
oidparse(Node *node)
{
 switch (nodeTag(node))
 {
  case 128:
   return intVal(node);
  case 129:






   return oidin_subr(strVal(node), ((void*)0));
  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(node));
 }
 return InvalidOid;
}

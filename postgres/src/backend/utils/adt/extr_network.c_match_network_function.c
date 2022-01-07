
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;
typedef int List ;






 int * NIL ;
 int * match_network_subset (int *,int *,int,int) ;

__attribute__((used)) static List *
match_network_function(Node *leftop,
        Node *rightop,
        int indexarg,
        Oid funcid,
        Oid opfamily)
{
 switch (funcid)
 {
  case 131:

   if (indexarg != 0)
    return NIL;
   return match_network_subset(leftop, rightop, 0, opfamily);

  case 130:

   if (indexarg != 0)
    return NIL;
   return match_network_subset(leftop, rightop, 1, opfamily);

  case 129:

   if (indexarg != 1)
    return NIL;
   return match_network_subset(rightop, leftop, 0, opfamily);

  case 128:

   if (indexarg != 1)
    return NIL;
   return match_network_subset(rightop, leftop, 1, opfamily);

  default:






   return NIL;
 }
}

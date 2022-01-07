
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int funcformat; } ;
typedef int Node ;
typedef TYPE_1__ FuncExpr ;


 int COERCE_EXPLICIT_CALL ;






 int nodeTag (int *) ;

__attribute__((used)) static bool
looks_like_function(Node *node)
{
 if (node == ((void*)0))
  return 0;
 switch (nodeTag(node))
 {
  case 132:

   return (((FuncExpr *) node)->funcformat == COERCE_EXPLICIT_CALL);
  case 130:
  case 133:
  case 131:
  case 129:
  case 128:

   return 1;
  default:
   break;
 }
 return 0;
}

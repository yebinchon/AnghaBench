
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int inputcollid; } ;
typedef TYPE_1__ WindowFunc ;
struct TYPE_16__ {int inputcollid; } ;
struct TYPE_15__ {int inputcollid; } ;
struct TYPE_14__ {int inputcollid; } ;
struct TYPE_13__ {int inputcollid; } ;
struct TYPE_12__ {int inputcollid; } ;
struct TYPE_11__ {int inputcollid; } ;
struct TYPE_10__ {int inputcollid; } ;
typedef TYPE_2__ ScalarArrayOpExpr ;
typedef TYPE_3__ OpExpr ;
typedef int Oid ;
typedef TYPE_4__ NullIfExpr ;
typedef int Node ;
typedef TYPE_5__ MinMaxExpr ;
typedef TYPE_6__ FuncExpr ;
typedef TYPE_7__ DistinctExpr ;
typedef TYPE_8__ Aggref ;


 int InvalidOid ;
 int nodeTag (int const*) ;

Oid
exprInputCollation(const Node *expr)
{
 Oid coll;

 if (!expr)
  return InvalidOid;

 switch (nodeTag(expr))
 {
  case 135:
   coll = ((const Aggref *) expr)->inputcollid;
   break;
  case 128:
   coll = ((const WindowFunc *) expr)->inputcollid;
   break;
  case 133:
   coll = ((const FuncExpr *) expr)->inputcollid;
   break;
  case 130:
   coll = ((const OpExpr *) expr)->inputcollid;
   break;
  case 134:
   coll = ((const DistinctExpr *) expr)->inputcollid;
   break;
  case 131:
   coll = ((const NullIfExpr *) expr)->inputcollid;
   break;
  case 129:
   coll = ((const ScalarArrayOpExpr *) expr)->inputcollid;
   break;
  case 132:
   coll = ((const MinMaxExpr *) expr)->inputcollid;
   break;
  default:
   coll = InvalidOid;
   break;
 }
 return coll;
}

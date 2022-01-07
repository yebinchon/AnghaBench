
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef int StringInfo ;
typedef TYPE_1__ A_Const ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outValue (int ,int *) ;
 int appendStringInfoString (int ,char*) ;
 int location ;

__attribute__((used)) static void
_outAConst(StringInfo str, const A_Const *node)
{
 WRITE_NODE_TYPE("A_CONST");

 appendStringInfoString(str, " :val ");
 _outValue(str, &(node->val));
 WRITE_LOCATION_FIELD(location);
}

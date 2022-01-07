
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int Hash ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int _outPlanInfo (int ,int const*) ;
 int hashkeys ;
 int rows_total ;
 int skewColumn ;
 int skewInherit ;
 int skewTable ;

__attribute__((used)) static void
_outHash(StringInfo str, const Hash *node)
{
 WRITE_NODE_TYPE("HASH");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(hashkeys);
 WRITE_OID_FIELD(skewTable);
 WRITE_INT_FIELD(skewColumn);
 WRITE_BOOL_FIELD(skewInherit);
 WRITE_FLOAT_FIELD(rows_total, "%.0f");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TargetEntry ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int expr ;
 int resjunk ;
 int resname ;
 int resno ;
 int resorigcol ;
 int resorigtbl ;
 int ressortgroupref ;

__attribute__((used)) static void
_outTargetEntry(StringInfo str, const TargetEntry *node)
{
 WRITE_NODE_TYPE("TARGETENTRY");

 WRITE_NODE_FIELD(expr);
 WRITE_INT_FIELD(resno);
 WRITE_STRING_FIELD(resname);
 WRITE_UINT_FIELD(ressortgroupref);
 WRITE_OID_FIELD(resorigtbl);
 WRITE_INT_FIELD(resorigcol);
 WRITE_BOOL_FIELD(resjunk);
}

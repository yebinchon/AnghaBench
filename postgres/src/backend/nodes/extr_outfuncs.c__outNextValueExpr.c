
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NextValueExpr ;


 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int seqid ;
 int typeId ;

__attribute__((used)) static void
_outNextValueExpr(StringInfo str, const NextValueExpr *node)
{
 WRITE_NODE_TYPE("NEXTVALUEEXPR");

 WRITE_OID_FIELD(seqid);
 WRITE_OID_FIELD(typeId);
}

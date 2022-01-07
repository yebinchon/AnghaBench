
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int EquivalenceMember ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int em_datatype ;
 int em_expr ;
 int em_is_child ;
 int em_is_const ;
 int em_nullable_relids ;
 int em_relids ;

__attribute__((used)) static void
_outEquivalenceMember(StringInfo str, const EquivalenceMember *node)
{
 WRITE_NODE_TYPE("EQUIVALENCEMEMBER");

 WRITE_NODE_FIELD(em_expr);
 WRITE_BITMAPSET_FIELD(em_relids);
 WRITE_BITMAPSET_FIELD(em_nullable_relids);
 WRITE_BOOL_FIELD(em_is_const);
 WRITE_BOOL_FIELD(em_is_child);
 WRITE_OID_FIELD(em_datatype);
}

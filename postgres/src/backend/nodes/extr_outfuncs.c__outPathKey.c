
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PathKey ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int pk_eclass ;
 int pk_nulls_first ;
 int pk_opfamily ;
 int pk_strategy ;

__attribute__((used)) static void
_outPathKey(StringInfo str, const PathKey *node)
{
 WRITE_NODE_TYPE("PATHKEY");

 WRITE_NODE_FIELD(pk_eclass);
 WRITE_OID_FIELD(pk_opfamily);
 WRITE_INT_FIELD(pk_strategy);
 WRITE_BOOL_FIELD(pk_nulls_first);
}

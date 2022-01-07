
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ColumnDef ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_CHAR_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int collClause ;
 int collOid ;
 int colname ;
 int constraints ;
 int cooked_default ;
 int fdwoptions ;
 int generated ;
 int identity ;
 int identitySequence ;
 int inhcount ;
 int is_from_type ;
 int is_local ;
 int is_not_null ;
 int location ;
 int raw_default ;
 int storage ;
 int typeName ;

__attribute__((used)) static void
_outColumnDef(StringInfo str, const ColumnDef *node)
{
 WRITE_NODE_TYPE("COLUMNDEF");

 WRITE_STRING_FIELD(colname);
 WRITE_NODE_FIELD(typeName);
 WRITE_INT_FIELD(inhcount);
 WRITE_BOOL_FIELD(is_local);
 WRITE_BOOL_FIELD(is_not_null);
 WRITE_BOOL_FIELD(is_from_type);
 WRITE_CHAR_FIELD(storage);
 WRITE_NODE_FIELD(raw_default);
 WRITE_NODE_FIELD(cooked_default);
 WRITE_CHAR_FIELD(identity);
 WRITE_NODE_FIELD(identitySequence);
 WRITE_CHAR_FIELD(generated);
 WRITE_NODE_FIELD(collClause);
 WRITE_OID_FIELD(collOid);
 WRITE_NODE_FIELD(constraints);
 WRITE_NODE_FIELD(fdwoptions);
 WRITE_LOCATION_FIELD(location);
}

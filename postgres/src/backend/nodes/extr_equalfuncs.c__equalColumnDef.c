
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ColumnDef ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalColumnDef(const ColumnDef *a, const ColumnDef *b)
{
 COMPARE_STRING_FIELD(colname);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_SCALAR_FIELD(inhcount);
 COMPARE_SCALAR_FIELD(is_local);
 COMPARE_SCALAR_FIELD(is_not_null);
 COMPARE_SCALAR_FIELD(is_from_type);
 COMPARE_SCALAR_FIELD(storage);
 COMPARE_NODE_FIELD(raw_default);
 COMPARE_NODE_FIELD(cooked_default);
 COMPARE_SCALAR_FIELD(identity);
 COMPARE_NODE_FIELD(identitySequence);
 COMPARE_SCALAR_FIELD(generated);
 COMPARE_NODE_FIELD(collClause);
 COMPARE_SCALAR_FIELD(collOid);
 COMPARE_NODE_FIELD(constraints);
 COMPARE_NODE_FIELD(fdwoptions);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}

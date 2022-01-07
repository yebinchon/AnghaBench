
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RowExpr ;


 int CoercionForm ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int colnames ;
 int location ;
 int row_format ;
 int row_typeid ;

__attribute__((used)) static void
_outRowExpr(StringInfo str, const RowExpr *node)
{
 WRITE_NODE_TYPE("ROW");

 WRITE_NODE_FIELD(args);
 WRITE_OID_FIELD(row_typeid);
 WRITE_ENUM_FIELD(row_format, CoercionForm);
 WRITE_NODE_FIELD(colnames);
 WRITE_LOCATION_FIELD(location);
}

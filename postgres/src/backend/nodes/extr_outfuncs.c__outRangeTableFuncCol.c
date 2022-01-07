
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeTableFuncCol ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int coldefexpr ;
 int colexpr ;
 int colname ;
 int for_ordinality ;
 int is_not_null ;
 int location ;
 int typeName ;

__attribute__((used)) static void
_outRangeTableFuncCol(StringInfo str, const RangeTableFuncCol *node)
{
 WRITE_NODE_TYPE("RANGETABLEFUNCCOL");

 WRITE_STRING_FIELD(colname);
 WRITE_NODE_FIELD(typeName);
 WRITE_BOOL_FIELD(for_ordinality);
 WRITE_BOOL_FIELD(is_not_null);
 WRITE_NODE_FIELD(colexpr);
 WRITE_NODE_FIELD(coldefexpr);
 WRITE_LOCATION_FIELD(location);
}

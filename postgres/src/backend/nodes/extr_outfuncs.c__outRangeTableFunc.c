
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeTableFunc ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int alias ;
 int columns ;
 int docexpr ;
 int lateral ;
 int location ;
 int namespaces ;
 int rowexpr ;

__attribute__((used)) static void
_outRangeTableFunc(StringInfo str, const RangeTableFunc *node)
{
 WRITE_NODE_TYPE("RANGETABLEFUNC");

 WRITE_BOOL_FIELD(lateral);
 WRITE_NODE_FIELD(docexpr);
 WRITE_NODE_FIELD(rowexpr);
 WRITE_NODE_FIELD(namespaces);
 WRITE_NODE_FIELD(columns);
 WRITE_NODE_FIELD(alias);
 WRITE_LOCATION_FIELD(location);
}

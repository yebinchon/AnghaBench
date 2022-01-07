
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeVar ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_CHAR_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int alias ;
 int inh ;
 int location ;
 int relname ;
 int relpersistence ;
 int schemaname ;

__attribute__((used)) static void
_outRangeVar(StringInfo str, const RangeVar *node)
{
 WRITE_NODE_TYPE("RANGEVAR");





 WRITE_STRING_FIELD(schemaname);
 WRITE_STRING_FIELD(relname);
 WRITE_BOOL_FIELD(inh);
 WRITE_CHAR_FIELD(relpersistence);
 WRITE_NODE_FIELD(alias);
 WRITE_LOCATION_FIELD(location);
}

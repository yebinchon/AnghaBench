
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeFunction ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int alias ;
 int coldeflist ;
 int functions ;
 int is_rowsfrom ;
 int lateral ;
 int ordinality ;

__attribute__((used)) static void
_outRangeFunction(StringInfo str, const RangeFunction *node)
{
 WRITE_NODE_TYPE("RANGEFUNCTION");

 WRITE_BOOL_FIELD(lateral);
 WRITE_BOOL_FIELD(ordinality);
 WRITE_BOOL_FIELD(is_rowsfrom);
 WRITE_NODE_FIELD(functions);
 WRITE_NODE_FIELD(alias);
 WRITE_NODE_FIELD(coldeflist);
}

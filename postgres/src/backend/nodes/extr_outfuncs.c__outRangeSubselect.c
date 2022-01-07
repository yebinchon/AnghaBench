
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeSubselect ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int alias ;
 int lateral ;
 int subquery ;

__attribute__((used)) static void
_outRangeSubselect(StringInfo str, const RangeSubselect *node)
{
 WRITE_NODE_TYPE("RANGESUBSELECT");

 WRITE_BOOL_FIELD(lateral);
 WRITE_NODE_FIELD(subquery);
 WRITE_NODE_FIELD(alias);
}

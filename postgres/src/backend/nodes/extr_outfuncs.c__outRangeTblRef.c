
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeTblRef ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int rtindex ;

__attribute__((used)) static void
_outRangeTblRef(StringInfo str, const RangeTblRef *node)
{
 WRITE_NODE_TYPE("RANGETBLREF");

 WRITE_INT_FIELD(rtindex);
}

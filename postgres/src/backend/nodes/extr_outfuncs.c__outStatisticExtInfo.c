
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int StatisticExtInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_CHAR_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int keys ;
 int kind ;
 int statOid ;

__attribute__((used)) static void
_outStatisticExtInfo(StringInfo str, const StatisticExtInfo *node)
{
 WRITE_NODE_TYPE("STATISTICEXTINFO");


 WRITE_OID_FIELD(statOid);

 WRITE_CHAR_FIELD(kind);
 WRITE_BITMAPSET_FIELD(keys);
}

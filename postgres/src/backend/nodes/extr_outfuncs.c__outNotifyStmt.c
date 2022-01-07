
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NotifyStmt ;


 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int conditionname ;
 int payload ;

__attribute__((used)) static void
_outNotifyStmt(StringInfo str, const NotifyStmt *node)
{
 WRITE_NODE_TYPE("NOTIFY");

 WRITE_STRING_FIELD(conditionname);
 WRITE_STRING_FIELD(payload);
}

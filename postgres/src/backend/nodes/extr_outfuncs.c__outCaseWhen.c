
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CaseWhen ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int expr ;
 int location ;
 int result ;

__attribute__((used)) static void
_outCaseWhen(StringInfo str, const CaseWhen *node)
{
 WRITE_NODE_TYPE("WHEN");

 WRITE_NODE_FIELD(expr);
 WRITE_NODE_FIELD(result);
 WRITE_LOCATION_FIELD(location);
}

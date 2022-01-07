
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubLink ;
typedef int StringInfo ;


 int SubLinkType ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int location ;
 int operName ;
 int subLinkId ;
 int subLinkType ;
 int subselect ;
 int testexpr ;

__attribute__((used)) static void
_outSubLink(StringInfo str, const SubLink *node)
{
 WRITE_NODE_TYPE("SUBLINK");

 WRITE_ENUM_FIELD(subLinkType, SubLinkType);
 WRITE_INT_FIELD(subLinkId);
 WRITE_NODE_FIELD(testexpr);
 WRITE_NODE_FIELD(operName);
 WRITE_NODE_FIELD(subselect);
 WRITE_LOCATION_FIELD(location);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithCheckOption ;
typedef int StringInfo ;


 int WCOKind ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int cascaded ;
 int kind ;
 int polname ;
 int qual ;
 int relname ;

__attribute__((used)) static void
_outWithCheckOption(StringInfo str, const WithCheckOption *node)
{
 WRITE_NODE_TYPE("WITHCHECKOPTION");

 WRITE_ENUM_FIELD(kind, WCOKind);
 WRITE_STRING_FIELD(relname);
 WRITE_STRING_FIELD(polname);
 WRITE_NODE_FIELD(qual);
 WRITE_BOOL_FIELD(cascaded);
}

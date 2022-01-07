
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Alias ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int aliasname ;
 int colnames ;

__attribute__((used)) static void
_outAlias(StringInfo str, const Alias *node)
{
 WRITE_NODE_TYPE("ALIAS");

 WRITE_STRING_FIELD(aliasname);
 WRITE_NODE_FIELD(colnames);
}

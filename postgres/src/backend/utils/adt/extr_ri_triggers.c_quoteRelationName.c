
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int RelationGetNamespace (int ) ;
 int RelationGetRelationName (int ) ;
 int get_namespace_name (int ) ;
 int quoteOneName (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
quoteRelationName(char *buffer, Relation rel)
{
 quoteOneName(buffer, get_namespace_name(RelationGetNamespace(rel)));
 buffer += strlen(buffer);
 *buffer++ = '.';
 quoteOneName(buffer, RelationGetRelationName(rel));
}

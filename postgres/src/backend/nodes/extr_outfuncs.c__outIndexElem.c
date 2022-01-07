
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int IndexElem ;


 int SortByDir ;
 int SortByNulls ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int collation ;
 int expr ;
 int indexcolname ;
 int name ;
 int nulls_ordering ;
 int opclass ;
 int ordering ;

__attribute__((used)) static void
_outIndexElem(StringInfo str, const IndexElem *node)
{
 WRITE_NODE_TYPE("INDEXELEM");

 WRITE_STRING_FIELD(name);
 WRITE_NODE_FIELD(expr);
 WRITE_STRING_FIELD(indexcolname);
 WRITE_NODE_FIELD(collation);
 WRITE_NODE_FIELD(opclass);
 WRITE_ENUM_FIELD(ordering, SortByDir);
 WRITE_ENUM_FIELD(nulls_ordering, SortByNulls);
}

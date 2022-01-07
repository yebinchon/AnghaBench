
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int IndexClause ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int indexcol ;
 int indexcols ;
 int indexquals ;
 int lossy ;
 int rinfo ;

__attribute__((used)) static void
_outIndexClause(StringInfo str, const IndexClause *node)
{
 WRITE_NODE_TYPE("INDEXCLAUSE");

 WRITE_NODE_FIELD(rinfo);
 WRITE_NODE_FIELD(indexquals);
 WRITE_BOOL_FIELD(lossy);
 WRITE_INT_FIELD(indexcol);
 WRITE_NODE_FIELD(indexcols);
}

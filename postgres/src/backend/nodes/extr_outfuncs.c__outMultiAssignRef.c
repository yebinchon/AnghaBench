
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MultiAssignRef ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int colno ;
 int ncolumns ;
 int source ;

__attribute__((used)) static void
_outMultiAssignRef(StringInfo str, const MultiAssignRef *node)
{
 WRITE_NODE_TYPE("MULTIASSIGNREF");

 WRITE_NODE_FIELD(source);
 WRITE_INT_FIELD(colno);
 WRITE_INT_FIELD(ncolumns);
}

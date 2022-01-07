
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiAssignRef ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int colno ;
 int ncolumns ;
 int source ;

__attribute__((used)) static bool
_equalMultiAssignRef(const MultiAssignRef *a, const MultiAssignRef *b)
{
 COMPARE_NODE_FIELD(source);
 COMPARE_SCALAR_FIELD(colno);
 COMPARE_SCALAR_FIELD(ncolumns);

 return 1;
}

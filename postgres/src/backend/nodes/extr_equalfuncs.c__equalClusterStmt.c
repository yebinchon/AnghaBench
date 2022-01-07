
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ClusterStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int indexname ;
 int options ;
 int relation ;

__attribute__((used)) static bool
_equalClusterStmt(const ClusterStmt *a, const ClusterStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_STRING_FIELD(indexname);
 COMPARE_SCALAR_FIELD(options);

 return 1;
}

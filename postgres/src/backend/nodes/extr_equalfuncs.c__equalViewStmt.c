
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ViewStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int aliases ;
 int options ;
 int query ;
 int replace ;
 int view ;
 int withCheckOption ;

__attribute__((used)) static bool
_equalViewStmt(const ViewStmt *a, const ViewStmt *b)
{
 COMPARE_NODE_FIELD(view);
 COMPARE_NODE_FIELD(aliases);
 COMPARE_NODE_FIELD(query);
 COMPARE_SCALAR_FIELD(replace);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(withCheckOption);

 return 1;
}

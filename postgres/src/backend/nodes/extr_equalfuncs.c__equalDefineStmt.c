
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DefineStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int definition ;
 int defnames ;
 int if_not_exists ;
 int kind ;
 int oldstyle ;
 int replace ;

__attribute__((used)) static bool
_equalDefineStmt(const DefineStmt *a, const DefineStmt *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_SCALAR_FIELD(oldstyle);
 COMPARE_NODE_FIELD(defnames);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(definition);
 COMPARE_SCALAR_FIELD(if_not_exists);
 COMPARE_SCALAR_FIELD(replace);

 return 1;
}

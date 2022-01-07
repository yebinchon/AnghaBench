
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTSConfigurationStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int cfgname ;
 int dicts ;
 int kind ;
 int missing_ok ;
 int override ;
 int replace ;
 int tokentype ;

__attribute__((used)) static bool
_equalAlterTSConfigurationStmt(const AlterTSConfigurationStmt *a,
          const AlterTSConfigurationStmt *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(cfgname);
 COMPARE_NODE_FIELD(tokentype);
 COMPARE_NODE_FIELD(dicts);
 COMPARE_SCALAR_FIELD(override);
 COMPARE_SCALAR_FIELD(replace);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}

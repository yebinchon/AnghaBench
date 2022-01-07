
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreatePLangStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int plhandler ;
 int plinline ;
 int plname ;
 int pltrusted ;
 int plvalidator ;
 int replace ;

__attribute__((used)) static bool
_equalCreatePLangStmt(const CreatePLangStmt *a, const CreatePLangStmt *b)
{
 COMPARE_SCALAR_FIELD(replace);
 COMPARE_STRING_FIELD(plname);
 COMPARE_NODE_FIELD(plhandler);
 COMPARE_NODE_FIELD(plinline);
 COMPARE_NODE_FIELD(plvalidator);
 COMPARE_SCALAR_FIELD(pltrusted);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
typedef TYPE_1__ CreateForeignTableStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int _equalCreateStmt (int *,int *) ;
 int options ;
 int servername ;

__attribute__((used)) static bool
_equalCreateForeignTableStmt(const CreateForeignTableStmt *a, const CreateForeignTableStmt *b)
{
 if (!_equalCreateStmt(&a->base, &b->base))
  return 0;

 COMPARE_STRING_FIELD(servername);
 COMPARE_NODE_FIELD(options);

 return 1;
}

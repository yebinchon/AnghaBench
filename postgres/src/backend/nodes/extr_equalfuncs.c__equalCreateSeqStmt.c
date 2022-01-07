
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateSeqStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int for_identity ;
 int if_not_exists ;
 int options ;
 int ownerId ;
 int sequence ;

__attribute__((used)) static bool
_equalCreateSeqStmt(const CreateSeqStmt *a, const CreateSeqStmt *b)
{
 COMPARE_NODE_FIELD(sequence);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(ownerId);
 COMPARE_SCALAR_FIELD(for_identity);
 COMPARE_SCALAR_FIELD(if_not_exists);

 return 1;
}

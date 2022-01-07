
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterSeqStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int for_identity ;
 int missing_ok ;
 int options ;
 int sequence ;

__attribute__((used)) static bool
_equalAlterSeqStmt(const AlterSeqStmt *a, const AlterSeqStmt *b)
{
 COMPARE_NODE_FIELD(sequence);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(for_identity);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}

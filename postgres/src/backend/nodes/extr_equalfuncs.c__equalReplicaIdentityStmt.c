
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReplicaIdentityStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int identity_type ;
 int name ;

__attribute__((used)) static bool
_equalReplicaIdentityStmt(const ReplicaIdentityStmt *a, const ReplicaIdentityStmt *b)
{
 COMPARE_SCALAR_FIELD(identity_type);
 COMPARE_STRING_FIELD(name);

 return 1;
}

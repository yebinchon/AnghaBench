
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOWED_CHILD1 ;
 int ALLOWED_CHILD2 ;
 int NO_POLICY_USER ;
 int RESTRICTED_PARENT ;
 int ROOT_USER ;
 int ensure_user_exists (int ) ;

__attribute__((used)) static void ensure_users_exist(void)
{
 ensure_user_exists(ROOT_USER);
 ensure_user_exists(RESTRICTED_PARENT);
 ensure_user_exists(ALLOWED_CHILD1);
 ensure_user_exists(ALLOWED_CHILD2);
 ensure_user_exists(NO_POLICY_USER);
}

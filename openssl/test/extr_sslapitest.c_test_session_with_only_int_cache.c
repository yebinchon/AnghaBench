
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int execute_test_session (int ,int,int ) ;

__attribute__((used)) static int test_session_with_only_int_cache(void)
{

    if (!execute_test_session(TLS1_3_VERSION, 1, 0))
        return 0;



    return execute_test_session(TLS1_2_VERSION, 1, 0);



}

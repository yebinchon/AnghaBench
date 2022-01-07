
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTLOG ;


 int CTLOG_new_from_base64 (int **,char const*,char const*) ;
 int TEST_true (int) ;

__attribute__((used)) static int test_ctlog_from_base64(void)
{
    CTLOG *ctlogp = ((void*)0);
    const char notb64[] = "\01\02\03\04";
    const char pad[] = "====";
    const char name[] = "name";


    if (!TEST_true(!CTLOG_new_from_base64(&ctlogp, notb64, name))
        || !TEST_true(!CTLOG_new_from_base64(&ctlogp, pad, name)))
        return 0;
    return 1;
}

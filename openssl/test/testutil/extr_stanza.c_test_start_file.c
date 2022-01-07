
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* test_file; int fp; } ;
typedef TYPE_1__ STANZA ;


 int BIO_new_file (char const*,char*) ;
 int TEST_info (char*,char const*) ;
 int TEST_ptr (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int set_test_title (char const*) ;

int test_start_file(STANZA *s, const char *testfile)
{
    TEST_info("Reading %s", testfile);
    set_test_title(testfile);
    memset(s, 0, sizeof(*s));
    if (!TEST_ptr(s->fp = BIO_new_file(testfile, "r")))
        return 0;
    s->test_file = testfile;
    return 1;
}

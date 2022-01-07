
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* member_0; int name; int (* func ) (TYPE_1__*) ;int member_1; } ;
struct TYPE_7__ {int start; int test_file; } ;
typedef TYPE_1__ STANZA ;
typedef TYPE_2__ FILETEST ;


 int OSSL_NELEM (TYPE_2__ const*) ;
 int TEST_info (char*,int ,int ,...) ;
 int * findattr (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int file_test_run(STANZA *s)
{
    static const FILETEST filetests[] = {
        {"Sum", 128},
        {"LShift1", 136},
        {"LShift", 137},
        {"RShift", 130},
        {"Square", 129},
        {"Product", 132},
        {"Quotient", 131},
        {"ModMul", 134},
        {"ModExp", 135},
        {"Exp", 139},
        {"ModSqrt", 133},
        {"GCD", 138},
    };
    int numtests = OSSL_NELEM(filetests);
    const FILETEST *tp = filetests;

    for ( ; --numtests >= 0; tp++) {
        if (findattr(s, tp->name) != ((void*)0)) {
            if (!tp->func(s)) {
                TEST_info("%s:%d: Failed %s test",
                          s->test_file, s->start, tp->name);
                return 0;
            }
            return 1;
        }
    }
    TEST_info("%s:%d: Unknown test", s->test_file, s->start);
    return 0;
}

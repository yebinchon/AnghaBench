
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ success; } ;
struct TYPE_9__ {int (* ifree ) (TYPE_2__*) ;TYPE_2__* (* d2i ) (int *,unsigned char**,long) ;} ;
typedef TYPE_1__ TEST_PACKAGE ;
typedef TYPE_2__ EXPECTED ;


 int ERR_clear_error () ;
 scalar_t__ memcmp (TYPE_2__*,TYPE_2__ const*,size_t) ;
 TYPE_2__* stub1 (int *,unsigned char**,long) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int do_decode(unsigned char *bytes, long nbytes,
                     const EXPECTED *expected, size_t expected_size,
                     const TEST_PACKAGE *package)
{
    EXPECTED *enctst = ((void*)0);
    const unsigned char *start;
    int ret = 0;

    start = bytes;
    enctst = package->d2i(((void*)0), &bytes, nbytes);
    if (enctst == ((void*)0)) {
        if (expected->success == 0) {
            ret = 1;
            ERR_clear_error();
        } else {
            ret = -1;
        }
    } else {
        if (start + nbytes == bytes
            && memcmp(enctst, expected, expected_size) == 0)
            ret = 1;
        else
            ret = 0;
    }

    package->ifree(enctst);
    return ret;
}

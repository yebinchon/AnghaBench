
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bytes; } ;


 TYPE_1__* RAND_get_rand_method () ;
 int RAND_set_rand_method (TYPE_1__*) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_true (int ) ;
 TYPE_1__ fake_rand ;
 int fbytes ;
 TYPE_1__* old_rand ;

__attribute__((used)) static int change_rand(void)
{

    if (!TEST_ptr(old_rand = RAND_get_rand_method()))
        return 0;

    fake_rand = *old_rand;

    fake_rand.bytes = fbytes;

    if (!TEST_true(RAND_set_rand_method(&fake_rand)))
        return 0;
    return 1;
}

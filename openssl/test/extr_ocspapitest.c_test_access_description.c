
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* location; } ;
typedef TYPE_1__ ACCESS_DESCRIPTION ;


 int ACCESS_DESCRIPTION_free (TYPE_1__*) ;
 TYPE_1__* ACCESS_DESCRIPTION_new () ;
 int GENERAL_NAME_free (TYPE_1__*) ;
 TYPE_1__* GENERAL_NAME_new () ;
 int TEST_ptr (TYPE_1__*) ;

__attribute__((used)) static int test_access_description(int testcase)
{
    ACCESS_DESCRIPTION *ad = ACCESS_DESCRIPTION_new();
    int ret = 0;

    if (!TEST_ptr(ad))
        goto err;

    switch (testcase) {
    case 0:
        break;
    case 1:
        if (!TEST_ptr(ad->location))
            goto err;
        GENERAL_NAME_free(ad->location);
        ad->location = ((void*)0);
        break;
    case 2:
        GENERAL_NAME_free(ad->location);
        ad->location = GENERAL_NAME_new();
        if (!TEST_ptr(ad->location))
            goto err;
        break;
    }
    ACCESS_DESCRIPTION_free(ad);
    ret = 1;
err:
    return ret;
}

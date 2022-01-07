
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sct_list; int ctlog_store; } ;
typedef TYPE_1__ CT_TEST_FIXTURE ;


 int CTLOG_STORE_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int SCT_LIST_free (int ) ;

__attribute__((used)) static void tear_down(CT_TEST_FIXTURE *fixture)
{
    if (fixture != ((void*)0)) {
        CTLOG_STORE_free(fixture->ctlog_store);
        SCT_LIST_free(fixture->sct_list);
    }
    OPENSSL_free(fixture);
}

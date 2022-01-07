
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_9__ {TYPE_1__* sender; } ;
struct TYPE_8__ {TYPE_4__* hdr; } ;
struct TYPE_7__ {int directoryName; } ;
struct TYPE_6__ {TYPE_2__ d; int type; } ;
typedef TYPE_3__ CMP_HDR_TEST_FIXTURE ;


 int GEN_DIRNAME ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int X509_NAME_ADD (int *,char*,char*) ;
 int X509_NAME_cmp (int ,int *) ;
 int X509_NAME_free (int *) ;
 int * X509_NAME_new () ;
 int ossl_cmp_hdr_set1_sender (TYPE_4__*,int *) ;

__attribute__((used)) static int execute_HDR_set1_sender_test(CMP_HDR_TEST_FIXTURE *fixture)
{
    X509_NAME *x509name = X509_NAME_new();

    if (!TEST_ptr(x509name))
        return 0;

    X509_NAME_ADD(x509name, "CN", "A common sender name");
    if (!TEST_int_eq(ossl_cmp_hdr_set1_sender(fixture->hdr, x509name), 1))
        return 0;
    if (!TEST_int_eq(fixture->hdr->sender->type, GEN_DIRNAME))
        return 0;

    if (!TEST_int_eq(
            X509_NAME_cmp(fixture->hdr->sender->d.directoryName, x509name), 0))
        return 0;

    X509_NAME_free(x509name);
    return 1;
}

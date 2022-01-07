
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ encode_expectations_elem_size; int asn1_type; } ;
typedef TYPE_1__ TEST_PACKAGE ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int * ASN1_ITEM_ptr (int ) ;
 int ASN1_item_print (int ,int *,int ,int const*,int *) ;
 scalar_t__ DATA_BUF_SIZE ;
 int OPENSSL_assert (int) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (scalar_t__) ;
 int RAND_bytes (unsigned char*,int) ;
 int bio_err ;

__attribute__((used)) static int do_print_item(const TEST_PACKAGE *package)
{

    const ASN1_ITEM *i = ASN1_ITEM_ptr(package->asn1_type);
    ASN1_VALUE *o;
    int ret;

    OPENSSL_assert(package->encode_expectations_elem_size <= 256);
    if ((o = OPENSSL_malloc(256)) == ((void*)0))
        return 0;

    (void)RAND_bytes((unsigned char*)o,
                     (int)package->encode_expectations_elem_size);
    ret = ASN1_item_print(bio_err, o, 0, i, ((void*)0));
    OPENSSL_free(o);

    return ret;
}

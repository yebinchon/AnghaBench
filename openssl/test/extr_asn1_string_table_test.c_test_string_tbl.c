
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING_TABLE ;


 int ASN1_STRING_TABLE_add (int,int,int,int ,int ) ;
 int ASN1_STRING_TABLE_cleanup () ;
 int * ASN1_STRING_TABLE_get (int) ;
 int MBSTRING_ASC ;
 int TEST_info (char*,...) ;
 int TEST_ptr (int const*) ;
 int TEST_ptr_null (int const*) ;
 int TEST_true (int) ;

__attribute__((used)) static int test_string_tbl(void)
{
    const ASN1_STRING_TABLE *tmp = ((void*)0);
    int nid = 12345678, nid2 = 87654321, rv = 0, ret = 0;

    tmp = ASN1_STRING_TABLE_get(nid);
    if (!TEST_ptr_null(tmp)) {
        TEST_info("asn1 string table: ASN1_STRING_TABLE_get non-exist nid");
        goto out;
    }

    ret = ASN1_STRING_TABLE_add(nid, -1, -1, MBSTRING_ASC, 0);
    if (!TEST_true(ret)) {
        TEST_info("asn1 string table: add NID(%d) failed", nid);
        goto out;
    }

    ret = ASN1_STRING_TABLE_add(nid2, -1, -1, MBSTRING_ASC, 0);
    if (!TEST_true(ret)) {
        TEST_info("asn1 string table: add NID(%d) failed", nid2);
        goto out;
    }

    tmp = ASN1_STRING_TABLE_get(nid);
    if (!TEST_ptr(tmp)) {
        TEST_info("asn1 string table: get NID(%d) failed", nid);
        goto out;
    }

    tmp = ASN1_STRING_TABLE_get(nid2);
    if (!TEST_ptr(tmp)) {
        TEST_info("asn1 string table: get NID(%d) failed", nid2);
        goto out;
    }

    ASN1_STRING_TABLE_cleanup();


    tmp = ASN1_STRING_TABLE_get(nid);
    if (!TEST_ptr_null(tmp)) {
        TEST_info("asn1 string table: get NID(%d) failed", nid);
        goto out;
    }

    tmp = ASN1_STRING_TABLE_get(nid2);
    if (!TEST_ptr_null(tmp)) {
        TEST_info("asn1 string table: get NID(%d) failed", nid2);
        goto out;
    }

    rv = 1;
 out:
    return rv;
}

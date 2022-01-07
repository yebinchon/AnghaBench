
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_PBE_find (int,int,int *,int *,int ) ;
 scalar_t__ EVP_PBE_get (int*,int*,int) ;
 int OBJ_nid2sn (int) ;
 int TEST_note (char*,int,int,int,...) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_pbelu(void)
{
    int i, failed = 0;
    int pbe_type, pbe_nid, last_type = -1, last_nid = -1;

    for (i = 0; EVP_PBE_get(&pbe_type, &pbe_nid, i) != 0; i++) {
        if (!TEST_true(EVP_PBE_find(pbe_type, pbe_nid, ((void*)0), ((void*)0), 0))) {
            TEST_note("i=%d, pbe_type=%d, pbe_nid=%d", i, pbe_type, pbe_nid);
            failed = 1;
            break;
        }
    }

    if (!failed)
        return 1;


    for (i = 0; EVP_PBE_get(&pbe_type, &pbe_nid, i) != 0; i++) {
        failed = pbe_type < last_type
                 || (pbe_type == last_type && pbe_nid < last_nid);
        TEST_note("PBE type=%d %d (%s): %s\n", pbe_type, pbe_nid,
                  OBJ_nid2sn(pbe_nid), failed ? "ERROR" : "OK");
        last_type = pbe_type;
        last_nid = pbe_nid;
    }
    return 0;
}

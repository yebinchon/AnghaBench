
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int ENGINE ;







 int * digest_md5 () ;
 int * digest_sha1 () ;
 int * digest_sha256 () ;
 int * digest_sha384 () ;
 int * digest_sha512 () ;
 int ossltest_digest_nids (int const**) ;

__attribute__((used)) static int ossltest_digests(ENGINE *e, const EVP_MD **digest,
                          const int **nids, int nid)
{
    int ok = 1;
    if (!digest) {

        return ossltest_digest_nids(nids);
    }

    switch (nid) {
    case 132:
        *digest = digest_md5();
        break;
    case 131:
        *digest = digest_sha1();
        break;
    case 130:
        *digest = digest_sha256();
        break;
    case 129:
        *digest = digest_sha384();
        break;
    case 128:
        *digest = digest_sha512();
        break;
    default:
        ok = 0;
        *digest = ((void*)0);
        break;
    }
    return ok;
}

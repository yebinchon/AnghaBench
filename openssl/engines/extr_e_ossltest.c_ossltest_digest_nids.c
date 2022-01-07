
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int EVP_MD_type (int const*) ;
 int * digest_md5 () ;
 int * digest_sha1 () ;
 int * digest_sha256 () ;
 int * digest_sha384 () ;
 int * digest_sha512 () ;

__attribute__((used)) static int ossltest_digest_nids(const int **nids)
{
    static int digest_nids[6] = { 0, 0, 0, 0, 0, 0 };
    static int pos = 0;
    static int init = 0;

    if (!init) {
        const EVP_MD *md;
        if ((md = digest_md5()) != ((void*)0))
            digest_nids[pos++] = EVP_MD_type(md);
        if ((md = digest_sha1()) != ((void*)0))
            digest_nids[pos++] = EVP_MD_type(md);
        if ((md = digest_sha256()) != ((void*)0))
            digest_nids[pos++] = EVP_MD_type(md);
        if ((md = digest_sha384()) != ((void*)0))
            digest_nids[pos++] = EVP_MD_type(md);
        if ((md = digest_sha512()) != ((void*)0))
            digest_nids[pos++] = EVP_MD_type(md);
        digest_nids[pos] = 0;
        init = 1;
    }
    *nids = digest_nids;
    return pos;
}

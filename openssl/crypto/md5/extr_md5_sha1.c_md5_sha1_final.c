
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha1; int md5; } ;
typedef TYPE_1__ MD5_SHA1_CTX ;


 int MD5_DIGEST_LENGTH ;
 int MD5_Final (unsigned char*,int *) ;
 int SHA1_Final (unsigned char*,int *) ;

int md5_sha1_final(unsigned char *md, MD5_SHA1_CTX *mctx)
{
    if (!MD5_Final(md, &mctx->md5))
        return 0;
    return SHA1_Final(md + MD5_DIGEST_LENGTH, &mctx->sha1);
}

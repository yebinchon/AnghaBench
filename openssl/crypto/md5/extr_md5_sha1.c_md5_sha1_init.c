
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha1; int md5; } ;
typedef TYPE_1__ MD5_SHA1_CTX ;


 int MD5_Init (int *) ;
 int SHA1_Init (int *) ;

int md5_sha1_init(MD5_SHA1_CTX *mctx)
{
    if (!MD5_Init(&mctx->md5))
        return 0;
    return SHA1_Init(&mctx->sha1);
}

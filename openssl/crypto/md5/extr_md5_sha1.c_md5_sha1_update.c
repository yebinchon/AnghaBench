
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha1; int md5; } ;
typedef TYPE_1__ MD5_SHA1_CTX ;


 int MD5_Update (int *,void const*,size_t) ;
 int SHA1_Update (int *,void const*,size_t) ;

int md5_sha1_update(MD5_SHA1_CTX *mctx, const void *data, size_t count)
{
    if (!MD5_Update(&mctx->md5, data, count))
        return 0;
    return SHA1_Update(&mctx->sha1, data, count);
}

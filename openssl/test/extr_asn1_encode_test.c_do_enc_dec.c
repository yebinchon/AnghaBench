
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* i2d ) (void*,unsigned char**) ;} ;
typedef TYPE_1__ TEST_PACKAGE ;
typedef int EXPECTED ;


 int OPENSSL_free (unsigned char*) ;
 int do_decode (unsigned char*,int,int *,long,TYPE_1__ const*) ;
 int stub1 (void*,unsigned char**) ;

__attribute__((used)) static int do_enc_dec(EXPECTED *bytes, long nbytes,
                      const TEST_PACKAGE *package)
{
    unsigned char *data = ((void*)0);
    int len;
    int ret = 0;
    void *p = bytes;

    len = package->i2d(p, &data);
    if (len < 0)
        return -1;

    ret = do_decode(data, len, bytes, nbytes, package);
    OPENSSL_free(data);
    return ret;
}

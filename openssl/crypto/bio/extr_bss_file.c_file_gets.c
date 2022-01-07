
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ ptr; } ;
typedef int FILE ;
typedef TYPE_1__ BIO ;


 int BIO_FLAGS_UPLINK_INTERNAL ;
 int UP_fgets (char*,int,scalar_t__) ;
 int fgets (char*,int,int *) ;
 int strlen (char*) ;

__attribute__((used)) static int file_gets(BIO *bp, char *buf, int size)
{
    int ret = 0;

    buf[0] = '\0';
    if (bp->flags & BIO_FLAGS_UPLINK_INTERNAL) {
        if (!UP_fgets(buf, size, bp->ptr))
            goto err;
    } else {
        if (!fgets(buf, size, (FILE *)bp->ptr))
            goto err;
    }
    if (buf[0] != '\0')
        ret = strlen(buf);
 err:
    return ret;
}

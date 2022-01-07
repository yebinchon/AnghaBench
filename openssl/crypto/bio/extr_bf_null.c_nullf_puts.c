
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_puts (int *,char const*) ;

__attribute__((used)) static int nullf_puts(BIO *bp, const char *str)
{
    if (bp->next_bio == ((void*)0))
        return 0;
    return BIO_puts(bp->next_bio, str);
}

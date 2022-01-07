
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_dump_cb (int ,int *,void const*,int) ;
 int write_bio ;

int BIO_dump(BIO *bp, const void *s, int len)
{
    return BIO_dump_cb(write_bio, bp, s, len);
}

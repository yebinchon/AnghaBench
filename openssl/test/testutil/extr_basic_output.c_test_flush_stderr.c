
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_flush (int ) ;
 int bio_err ;

int test_flush_stderr(void)
{
    return BIO_flush(bio_err);
}

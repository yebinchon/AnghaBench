
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_free_all (int ) ;
 int bio_err ;
 int bio_out ;

void test_close_streams(void)
{
    BIO_free_all(bio_out);
    BIO_free_all(bio_err);
}

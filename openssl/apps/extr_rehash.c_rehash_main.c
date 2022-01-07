
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*) ;
 int bio_err ;

int rehash_main(int argc, char **argv)
{
    BIO_printf(bio_err, "Not available; use c_rehash script\n");
    return 1;
}

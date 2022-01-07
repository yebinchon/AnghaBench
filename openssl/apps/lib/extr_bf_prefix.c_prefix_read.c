
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_next (int *) ;
 int BIO_read_ex (int ,char*,size_t,size_t*) ;

__attribute__((used)) static int prefix_read(BIO *b, char *in, size_t size, size_t *numread)
{
    return BIO_read_ex(BIO_next(b), in, size, numread);
}

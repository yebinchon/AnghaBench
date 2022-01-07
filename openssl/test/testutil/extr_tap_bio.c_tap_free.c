
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;

__attribute__((used)) static int tap_free(BIO *b)
{
    if (b == ((void*)0))
        return 0;
    BIO_set_data(b, ((void*)0));
    BIO_set_init(b, 0);
    return 1;
}

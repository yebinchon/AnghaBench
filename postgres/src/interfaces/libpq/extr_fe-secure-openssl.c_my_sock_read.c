
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 scalar_t__ BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;



 int SOCK_ERRNO ;
 int pqsecure_raw_read (int *,char*,int) ;

__attribute__((used)) static int
my_sock_read(BIO *h, char *buf, int size)
{
 int res;

 res = pqsecure_raw_read((PGconn *) BIO_get_data(h), buf, size);
 BIO_clear_retry_flags(h);
 if (res < 0)
 {

  switch (SOCK_ERRNO)
  {

   case 130:


   case 128:

   case 129:
    BIO_set_retry_read(h);
    break;

   default:
    break;
  }
 }

 return res;
}

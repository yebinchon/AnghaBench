
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Port ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 scalar_t__ BIO_get_data (int *) ;
 int BIO_set_retry_write (int *) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ errno ;
 int secure_raw_write (int *,char const*,int) ;

__attribute__((used)) static int
my_sock_write(BIO *h, const char *buf, int size)
{
 int res = 0;

 res = secure_raw_write(((Port *) BIO_get_data(h)), buf, size);
 BIO_clear_retry_flags(h);
 if (res <= 0)
 {

  if (errno == EINTR || errno == EWOULDBLOCK || errno == EAGAIN)
  {
   BIO_set_retry_write(h);
  }
 }

 return res;
}

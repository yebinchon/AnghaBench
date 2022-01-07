
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int bwrite; int bread; } ;
typedef TYPE_1__ BIO_METHOD ;


 int BIO_get_new_index () ;
 int BIO_meth_free (TYPE_1__*) ;
 int BIO_meth_get_callback_ctrl (TYPE_1__*) ;
 int BIO_meth_get_create (TYPE_1__*) ;
 int BIO_meth_get_ctrl (TYPE_1__*) ;
 int BIO_meth_get_destroy (TYPE_1__*) ;
 int BIO_meth_get_gets (TYPE_1__*) ;
 int BIO_meth_get_puts (TYPE_1__*) ;
 TYPE_1__* BIO_meth_new (int,char*) ;
 int BIO_meth_set_callback_ctrl (TYPE_1__*,int ) ;
 int BIO_meth_set_create (TYPE_1__*,int ) ;
 int BIO_meth_set_ctrl (TYPE_1__*,int ) ;
 int BIO_meth_set_destroy (TYPE_1__*,int ) ;
 int BIO_meth_set_gets (TYPE_1__*,int ) ;
 int BIO_meth_set_puts (TYPE_1__*,int ) ;
 int BIO_meth_set_read (TYPE_1__*,int ) ;
 int BIO_meth_set_write (TYPE_1__*,int ) ;
 scalar_t__ BIO_s_socket () ;
 TYPE_1__* malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* my_bio_methods ;
 int my_sock_read ;
 int my_sock_write ;

__attribute__((used)) static BIO_METHOD *
my_BIO_s_socket(void)
{
 if (!my_bio_methods)
 {
  BIO_METHOD *biom = (BIO_METHOD *) BIO_s_socket();
  my_bio_methods = malloc(sizeof(BIO_METHOD));
  if (!my_bio_methods)
   return ((void*)0);
  memcpy(my_bio_methods, biom, sizeof(BIO_METHOD));
  my_bio_methods->bread = my_sock_read;
  my_bio_methods->bwrite = my_sock_write;

 }
 return my_bio_methods;
}

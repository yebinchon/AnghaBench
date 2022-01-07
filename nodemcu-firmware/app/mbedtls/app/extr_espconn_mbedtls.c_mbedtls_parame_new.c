
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef TYPE_1__* pmbedtls_parame ;
typedef int mbedtls_parame ;
struct TYPE_4__ {size_t parame_datalen; int * parame_data; } ;


 int os_free (TYPE_1__*) ;
 scalar_t__ os_zalloc (int) ;

__attribute__((used)) static pmbedtls_parame mbedtls_parame_new(size_t capacity)
{
 pmbedtls_parame rb = (pmbedtls_parame)os_zalloc(sizeof(mbedtls_parame));
 if (rb && capacity != 0){
  rb->parame_datalen = capacity;
  rb->parame_data = (uint8*)os_zalloc(rb->parame_datalen + 1);
  if (rb->parame_data){

  } else{
   os_free(rb);
   rb = ((void*)0);
  }
 }
 return rb;
}

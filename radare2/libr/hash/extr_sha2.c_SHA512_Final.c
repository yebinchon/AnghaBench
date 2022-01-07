
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ R_SHA512_CTX ;


 int REVERSE64 (int ,int ) ;
 int SHA512_DIGEST_LENGTH ;
 int SHA512_Last (TYPE_1__*) ;
 int memcpy (int *,int *,int ) ;
 int r_mem_memzero (TYPE_1__*,int) ;

void SHA512_Final(ut8 digest[], R_SHA512_CTX *context) {
 ut64 *d = (ut64 *) digest;


 if (!context) {
  return;
 }


 if (digest != (ut8 *) 0) {
  SHA512_Last (context);



  {

   int j;
   for (j = 0; j < 8; j++) {
    REVERSE64 (context->state[j], context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 r_mem_memzero (context, sizeof(*context));
}

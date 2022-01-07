
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int * state; } ;
typedef int R_SHA512_CTX ;
typedef TYPE_1__ R_SHA384_CTX ;


 int REVERSE64 (int ,int ) ;
 int SHA384_DIGEST_LENGTH ;
 int SHA512_Last (int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void SHA384_Final(ut8 digest[], R_SHA384_CTX *context) {
 ut64 *d = (ut64 *) digest;


 if (!context) {
  return;
 }


 if (digest != (ut8 *) 0) {
  SHA512_Last ((R_SHA512_CTX *) context);



  {

   int j;
   for (j = 0; j < 6; j++) {
    REVERSE64 (context->state[j], context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 memset (context, 0, sizeof(*context));
}

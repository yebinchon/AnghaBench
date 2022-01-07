
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int pg_sha512_ctx ;
struct TYPE_4__ {int * state; } ;
typedef TYPE_1__ pg_sha384_ctx ;


 int PG_SHA384_DIGEST_LENGTH ;
 int REVERSE64 (int ,int ) ;
 int SHA512_Last (int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
pg_sha384_final(pg_sha384_ctx *context, uint8 *digest)
{

 if (digest != ((void*)0))
 {
  SHA512_Last((pg_sha512_ctx *) context);



  {

   int j;

   for (j = 0; j < 6; j++)
   {
    REVERSE64(context->state[j], context->state[j]);
   }
  }

  memcpy(digest, context->state, PG_SHA384_DIGEST_LENGTH);
 }


 memset(context, 0, sizeof(pg_sha384_ctx));
}

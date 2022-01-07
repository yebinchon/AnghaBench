
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ pg_sha256_ctx ;


 int PG_SHA256_DIGEST_LENGTH ;
 int REVERSE32 (int ,int ) ;
 int SHA256_Last (TYPE_1__*) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
pg_sha256_final(pg_sha256_ctx *context, uint8 *digest)
{

 if (digest != ((void*)0))
 {
  SHA256_Last(context);


  {

   int j;

   for (j = 0; j < 8; j++)
   {
    REVERSE32(context->state[j], context->state[j]);
   }
  }

  memcpy(digest, context->state, PG_SHA256_DIGEST_LENGTH);
 }


 memset(context, 0, sizeof(pg_sha256_ctx));
}

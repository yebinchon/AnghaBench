
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitcount; int buffer; int state; } ;
typedef TYPE_1__ pg_sha256_ctx ;


 int PG_SHA256_BLOCK_LENGTH ;
 int PG_SHA256_DIGEST_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int sha256_initial_hash_value ;

void
pg_sha256_init(pg_sha256_ctx *context)
{
 if (context == ((void*)0))
  return;
 memcpy(context->state, sha256_initial_hash_value, PG_SHA256_DIGEST_LENGTH);
 memset(context->buffer, 0, PG_SHA256_BLOCK_LENGTH);
 context->bitcount = 0;
}

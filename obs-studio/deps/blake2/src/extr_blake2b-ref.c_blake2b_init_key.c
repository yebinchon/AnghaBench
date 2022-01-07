
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int blake2b_state ;
struct TYPE_3__ {int fanout; int depth; void** reserved; void** salt; void** personal; scalar_t__ inner_length; scalar_t__ node_depth; int xof_length; int node_offset; int leaf_length; void* key_length; void* digest_length; } ;
typedef TYPE_1__ blake2b_param ;


 int BLAKE2B_BLOCKBYTES ;
 size_t BLAKE2B_KEYBYTES ;
 size_t BLAKE2B_OUTBYTES ;
 scalar_t__ blake2b_init_param (int *,TYPE_1__*) ;
 int blake2b_update (int *,void**,int) ;
 int memcpy (void**,void const*,size_t) ;
 int memset (void**,int ,int) ;
 int secure_zero_memory (void**,int) ;
 int store32 (int *,int ) ;

int blake2b_init_key( blake2b_state *S, size_t outlen, const void *key, size_t keylen )
{
  blake2b_param P[1];

  if ( ( !outlen ) || ( outlen > BLAKE2B_OUTBYTES ) ) return -1;

  if ( !key || !keylen || keylen > BLAKE2B_KEYBYTES ) return -1;

  P->digest_length = (uint8_t)outlen;
  P->key_length = (uint8_t)keylen;
  P->fanout = 1;
  P->depth = 1;
  store32( &P->leaf_length, 0 );
  store32( &P->node_offset, 0 );
  store32( &P->xof_length, 0 );
  P->node_depth = 0;
  P->inner_length = 0;
  memset( P->reserved, 0, sizeof( P->reserved ) );
  memset( P->salt, 0, sizeof( P->salt ) );
  memset( P->personal, 0, sizeof( P->personal ) );

  if( blake2b_init_param( S, P ) < 0 ) return -1;

  {
    uint8_t block[BLAKE2B_BLOCKBYTES];
    memset( block, 0, BLAKE2B_BLOCKBYTES );
    memcpy( block, key, keylen );
    blake2b_update( S, block, BLAKE2B_BLOCKBYTES );
    secure_zero_memory( block, BLAKE2B_BLOCKBYTES );
  }
  return 0;
}

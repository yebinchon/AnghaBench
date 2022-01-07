
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int blake2b_state ;


 size_t BLAKE2B_KEYBYTES ;
 size_t BLAKE2B_OUTBYTES ;
 int blake2b_final (int *,void*,size_t) ;
 scalar_t__ blake2b_init (int *,size_t) ;
 scalar_t__ blake2b_init_key (int *,size_t,void const*,size_t) ;
 int blake2b_update (int *,int const*,size_t) ;

int blake2b( void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen )
{
  blake2b_state S[1];


  if ( ((void*)0) == in && inlen > 0 ) return -1;

  if ( ((void*)0) == out ) return -1;

  if( ((void*)0) == key && keylen > 0 ) return -1;

  if( !outlen || outlen > BLAKE2B_OUTBYTES ) return -1;

  if( keylen > BLAKE2B_KEYBYTES ) return -1;

  if( keylen > 0 )
  {
    if( blake2b_init_key( S, outlen, key, keylen ) < 0 ) return -1;
  }
  else
  {
    if( blake2b_init( S, outlen ) < 0 ) return -1;
  }

  blake2b_update( S, ( const uint8_t * )in, inlen );
  blake2b_final( S, out, outlen );
  return 0;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  blake2b_state ;

/* Variables and functions */
 size_t BLAKE2B_KEYBYTES ; 
 size_t BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

int FUNC4( void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen )
{
  blake2b_state S[1];

  /* Verify parameters */
  if ( NULL == in && inlen > 0 ) return -1;

  if ( NULL == out ) return -1;

  if( NULL == key && keylen > 0 ) return -1;

  if( !outlen || outlen > BLAKE2B_OUTBYTES ) return -1;

  if( keylen > BLAKE2B_KEYBYTES ) return -1;

  if( keylen > 0 )
  {
    if( FUNC2( S, outlen, key, keylen ) < 0 ) return -1;
  }
  else
  {
    if( FUNC1( S, outlen ) < 0 ) return -1;
  }

  FUNC3( S, ( const uint8_t * )in, inlen );
  FUNC0( S, out, outlen );
  return 0;
}
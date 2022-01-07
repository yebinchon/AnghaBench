
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MAXLEN ;
 int crypto_auth (scalar_t__*,scalar_t__*,int,scalar_t__*) ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;
 int printf (char*,int) ;
 int * vectors ;

__attribute__((used)) static int
test_vectors()
{

  u8 in[64], out[8], k[16];
  int i;
  int ok = 1;

  for( i = 0; i < 16; ++i ) k[i] = (u8)i;

  for( i = 0; i < 64; ++i )
  {
    in[i] = (u8)i;
    crypto_auth( out, in, i, k );

    if ( memcmp( out, vectors[i], 8 ) )
    {
      printf( "test vector failed for %d bytes\n", i );
      ok = 0;
    }
  }

  return ok;
}

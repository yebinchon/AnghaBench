
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u64 ;
typedef int u32 ;


 int SIPROUND ;
 int U64TO8_LE (unsigned char*,int) ;
 int U8TO64_LE (unsigned char const*) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int crypto_auth( unsigned char *out, const unsigned char *in, unsigned long long inlen, const unsigned char *k )
{

  u64 v0 = 0x736f6d6570736575ULL;
  u64 v1 = 0x646f72616e646f6dULL;
  u64 v2 = 0x6c7967656e657261ULL;
  u64 v3 = 0x7465646279746573ULL;
  u64 b;
  u64 k0 = U8TO64_LE( k );
  u64 k1 = U8TO64_LE( k + 8 );
  const u8 *end = in + inlen - ( inlen % sizeof( u64 ) );
  const int left = inlen & 7;
  b = ( ( u64 )inlen ) << 56;
  v3 ^= k1;
  v2 ^= k0;
  v1 ^= k1;
  v0 ^= k0;

  for ( ; in != end; in += 8 )
  {
    u64 m;
    m = U8TO64_LE( in );







    v3 ^= m;
    SIPROUND;
    SIPROUND;
    v0 ^= m;
  }

  switch( left )
  {
  case 7: b |= ( ( u64 )in[ 6] ) << 48;
  case 6: b |= ( ( u64 )in[ 5] ) << 40;
  case 5: b |= ( ( u64 )in[ 4] ) << 32;
  case 4: b |= ( ( u64 )in[ 3] ) << 24;
  case 3: b |= ( ( u64 )in[ 2] ) << 16;
  case 2: b |= ( ( u64 )in[ 1] ) << 8;
  case 1: b |= ( ( u64 )in[ 0] ); break;
  case 0: break;
  }
  v3 ^= b;
  SIPROUND;
  SIPROUND;
  v0 ^= b;






  v2 ^= 0xff;
  SIPROUND;
  SIPROUND;
  SIPROUND;
  SIPROUND;
  b = v0 ^ v1 ^ v2 ^ v3;
  U64TO8_LE( out, b );
  return 0;
}

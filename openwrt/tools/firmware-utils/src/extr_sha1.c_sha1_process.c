
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int uchar ;
struct TYPE_3__ {scalar_t__* state; } ;
typedef TYPE_1__ sha1_context ;


 int GET_UINT32_BE (scalar_t__,int *,int) ;
 int P (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ R (int) ;

void sha1_process( sha1_context *ctx, uchar data[64] )
{
    ulong temp, W[16], A, B, C, D, E;

    GET_UINT32_BE( W[0], data, 0 );
    GET_UINT32_BE( W[1], data, 4 );
    GET_UINT32_BE( W[2], data, 8 );
    GET_UINT32_BE( W[3], data, 12 );
    GET_UINT32_BE( W[4], data, 16 );
    GET_UINT32_BE( W[5], data, 20 );
    GET_UINT32_BE( W[6], data, 24 );
    GET_UINT32_BE( W[7], data, 28 );
    GET_UINT32_BE( W[8], data, 32 );
    GET_UINT32_BE( W[9], data, 36 );
    GET_UINT32_BE( W[10], data, 40 );
    GET_UINT32_BE( W[11], data, 44 );
    GET_UINT32_BE( W[12], data, 48 );
    GET_UINT32_BE( W[13], data, 52 );
    GET_UINT32_BE( W[14], data, 56 );
    GET_UINT32_BE( W[15], data, 60 );
    A = ctx->state[0];
    B = ctx->state[1];
    C = ctx->state[2];
    D = ctx->state[3];
    E = ctx->state[4];




    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (D ^ (B & (C ^ D))) + 0x5A827999 + W[0]; B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (C ^ (A & (B ^ C))) + 0x5A827999 + W[1]; A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (B ^ (E & (A ^ B))) + 0x5A827999 + W[2]; E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (A ^ (D & (E ^ A))) + 0x5A827999 + W[3]; D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (E ^ (C & (D ^ E))) + 0x5A827999 + W[4]; C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (D ^ (B & (C ^ D))) + 0x5A827999 + W[5]; B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (C ^ (A & (B ^ C))) + 0x5A827999 + W[6]; A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (B ^ (E & (A ^ B))) + 0x5A827999 + W[7]; E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (A ^ (D & (E ^ A))) + 0x5A827999 + W[8]; D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (E ^ (C & (D ^ E))) + 0x5A827999 + W[9]; C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (D ^ (B & (C ^ D))) + 0x5A827999 + W[10]; B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (C ^ (A & (B ^ C))) + 0x5A827999 + W[11]; A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (B ^ (E & (A ^ B))) + 0x5A827999 + W[12]; E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (A ^ (D & (E ^ A))) + 0x5A827999 + W[13]; D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (E ^ (C & (D ^ E))) + 0x5A827999 + W[14]; C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (D ^ (B & (C ^ D))) + 0x5A827999 + W[15]; B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (C ^ (A & (B ^ C))) + 0x5A827999 + ( temp = W[(16 - 3) & 0x0F] ^ W[(16 - 8) & 0x0F] ^ W[(16 - 14) & 0x0F] ^ W[ 16 & 0x0F], ( W[16 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (B ^ (E & (A ^ B))) + 0x5A827999 + ( temp = W[(17 - 3) & 0x0F] ^ W[(17 - 8) & 0x0F] ^ W[(17 - 14) & 0x0F] ^ W[ 17 & 0x0F], ( W[17 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (A ^ (D & (E ^ A))) + 0x5A827999 + ( temp = W[(18 - 3) & 0x0F] ^ W[(18 - 8) & 0x0F] ^ W[(18 - 14) & 0x0F] ^ W[ 18 & 0x0F], ( W[18 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (E ^ (C & (D ^ E))) + 0x5A827999 + ( temp = W[(19 - 3) & 0x0F] ^ W[(19 - 8) & 0x0F] ^ W[(19 - 14) & 0x0F] ^ W[ 19 & 0x0F], ( W[19 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };







    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0x6ED9EBA1 + ( temp = W[(20 - 3) & 0x0F] ^ W[(20 - 8) & 0x0F] ^ W[(20 - 14) & 0x0F] ^ W[ 20 & 0x0F], ( W[20 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0x6ED9EBA1 + ( temp = W[(21 - 3) & 0x0F] ^ W[(21 - 8) & 0x0F] ^ W[(21 - 14) & 0x0F] ^ W[ 21 & 0x0F], ( W[21 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0x6ED9EBA1 + ( temp = W[(22 - 3) & 0x0F] ^ W[(22 - 8) & 0x0F] ^ W[(22 - 14) & 0x0F] ^ W[ 22 & 0x0F], ( W[22 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0x6ED9EBA1 + ( temp = W[(23 - 3) & 0x0F] ^ W[(23 - 8) & 0x0F] ^ W[(23 - 14) & 0x0F] ^ W[ 23 & 0x0F], ( W[23 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0x6ED9EBA1 + ( temp = W[(24 - 3) & 0x0F] ^ W[(24 - 8) & 0x0F] ^ W[(24 - 14) & 0x0F] ^ W[ 24 & 0x0F], ( W[24 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0x6ED9EBA1 + ( temp = W[(25 - 3) & 0x0F] ^ W[(25 - 8) & 0x0F] ^ W[(25 - 14) & 0x0F] ^ W[ 25 & 0x0F], ( W[25 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0x6ED9EBA1 + ( temp = W[(26 - 3) & 0x0F] ^ W[(26 - 8) & 0x0F] ^ W[(26 - 14) & 0x0F] ^ W[ 26 & 0x0F], ( W[26 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0x6ED9EBA1 + ( temp = W[(27 - 3) & 0x0F] ^ W[(27 - 8) & 0x0F] ^ W[(27 - 14) & 0x0F] ^ W[ 27 & 0x0F], ( W[27 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0x6ED9EBA1 + ( temp = W[(28 - 3) & 0x0F] ^ W[(28 - 8) & 0x0F] ^ W[(28 - 14) & 0x0F] ^ W[ 28 & 0x0F], ( W[28 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0x6ED9EBA1 + ( temp = W[(29 - 3) & 0x0F] ^ W[(29 - 8) & 0x0F] ^ W[(29 - 14) & 0x0F] ^ W[ 29 & 0x0F], ( W[29 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0x6ED9EBA1 + ( temp = W[(30 - 3) & 0x0F] ^ W[(30 - 8) & 0x0F] ^ W[(30 - 14) & 0x0F] ^ W[ 30 & 0x0F], ( W[30 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0x6ED9EBA1 + ( temp = W[(31 - 3) & 0x0F] ^ W[(31 - 8) & 0x0F] ^ W[(31 - 14) & 0x0F] ^ W[ 31 & 0x0F], ( W[31 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0x6ED9EBA1 + ( temp = W[(32 - 3) & 0x0F] ^ W[(32 - 8) & 0x0F] ^ W[(32 - 14) & 0x0F] ^ W[ 32 & 0x0F], ( W[32 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0x6ED9EBA1 + ( temp = W[(33 - 3) & 0x0F] ^ W[(33 - 8) & 0x0F] ^ W[(33 - 14) & 0x0F] ^ W[ 33 & 0x0F], ( W[33 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0x6ED9EBA1 + ( temp = W[(34 - 3) & 0x0F] ^ W[(34 - 8) & 0x0F] ^ W[(34 - 14) & 0x0F] ^ W[ 34 & 0x0F], ( W[34 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0x6ED9EBA1 + ( temp = W[(35 - 3) & 0x0F] ^ W[(35 - 8) & 0x0F] ^ W[(35 - 14) & 0x0F] ^ W[ 35 & 0x0F], ( W[35 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0x6ED9EBA1 + ( temp = W[(36 - 3) & 0x0F] ^ W[(36 - 8) & 0x0F] ^ W[(36 - 14) & 0x0F] ^ W[ 36 & 0x0F], ( W[36 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0x6ED9EBA1 + ( temp = W[(37 - 3) & 0x0F] ^ W[(37 - 8) & 0x0F] ^ W[(37 - 14) & 0x0F] ^ W[ 37 & 0x0F], ( W[37 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0x6ED9EBA1 + ( temp = W[(38 - 3) & 0x0F] ^ W[(38 - 8) & 0x0F] ^ W[(38 - 14) & 0x0F] ^ W[ 38 & 0x0F], ( W[38 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0x6ED9EBA1 + ( temp = W[(39 - 3) & 0x0F] ^ W[(39 - 8) & 0x0F] ^ W[(39 - 14) & 0x0F] ^ W[ 39 & 0x0F], ( W[39 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };







    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + ((B & C) | (D & (B | C))) + 0x8F1BBCDC + ( temp = W[(40 - 3) & 0x0F] ^ W[(40 - 8) & 0x0F] ^ W[(40 - 14) & 0x0F] ^ W[ 40 & 0x0F], ( W[40 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + ((A & B) | (C & (A | B))) + 0x8F1BBCDC + ( temp = W[(41 - 3) & 0x0F] ^ W[(41 - 8) & 0x0F] ^ W[(41 - 14) & 0x0F] ^ W[ 41 & 0x0F], ( W[41 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + ((E & A) | (B & (E | A))) + 0x8F1BBCDC + ( temp = W[(42 - 3) & 0x0F] ^ W[(42 - 8) & 0x0F] ^ W[(42 - 14) & 0x0F] ^ W[ 42 & 0x0F], ( W[42 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + ((D & E) | (A & (D | E))) + 0x8F1BBCDC + ( temp = W[(43 - 3) & 0x0F] ^ W[(43 - 8) & 0x0F] ^ W[(43 - 14) & 0x0F] ^ W[ 43 & 0x0F], ( W[43 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + ((C & D) | (E & (C | D))) + 0x8F1BBCDC + ( temp = W[(44 - 3) & 0x0F] ^ W[(44 - 8) & 0x0F] ^ W[(44 - 14) & 0x0F] ^ W[ 44 & 0x0F], ( W[44 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + ((B & C) | (D & (B | C))) + 0x8F1BBCDC + ( temp = W[(45 - 3) & 0x0F] ^ W[(45 - 8) & 0x0F] ^ W[(45 - 14) & 0x0F] ^ W[ 45 & 0x0F], ( W[45 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + ((A & B) | (C & (A | B))) + 0x8F1BBCDC + ( temp = W[(46 - 3) & 0x0F] ^ W[(46 - 8) & 0x0F] ^ W[(46 - 14) & 0x0F] ^ W[ 46 & 0x0F], ( W[46 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + ((E & A) | (B & (E | A))) + 0x8F1BBCDC + ( temp = W[(47 - 3) & 0x0F] ^ W[(47 - 8) & 0x0F] ^ W[(47 - 14) & 0x0F] ^ W[ 47 & 0x0F], ( W[47 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + ((D & E) | (A & (D | E))) + 0x8F1BBCDC + ( temp = W[(48 - 3) & 0x0F] ^ W[(48 - 8) & 0x0F] ^ W[(48 - 14) & 0x0F] ^ W[ 48 & 0x0F], ( W[48 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + ((C & D) | (E & (C | D))) + 0x8F1BBCDC + ( temp = W[(49 - 3) & 0x0F] ^ W[(49 - 8) & 0x0F] ^ W[(49 - 14) & 0x0F] ^ W[ 49 & 0x0F], ( W[49 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + ((B & C) | (D & (B | C))) + 0x8F1BBCDC + ( temp = W[(50 - 3) & 0x0F] ^ W[(50 - 8) & 0x0F] ^ W[(50 - 14) & 0x0F] ^ W[ 50 & 0x0F], ( W[50 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + ((A & B) | (C & (A | B))) + 0x8F1BBCDC + ( temp = W[(51 - 3) & 0x0F] ^ W[(51 - 8) & 0x0F] ^ W[(51 - 14) & 0x0F] ^ W[ 51 & 0x0F], ( W[51 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + ((E & A) | (B & (E | A))) + 0x8F1BBCDC + ( temp = W[(52 - 3) & 0x0F] ^ W[(52 - 8) & 0x0F] ^ W[(52 - 14) & 0x0F] ^ W[ 52 & 0x0F], ( W[52 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + ((D & E) | (A & (D | E))) + 0x8F1BBCDC + ( temp = W[(53 - 3) & 0x0F] ^ W[(53 - 8) & 0x0F] ^ W[(53 - 14) & 0x0F] ^ W[ 53 & 0x0F], ( W[53 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + ((C & D) | (E & (C | D))) + 0x8F1BBCDC + ( temp = W[(54 - 3) & 0x0F] ^ W[(54 - 8) & 0x0F] ^ W[(54 - 14) & 0x0F] ^ W[ 54 & 0x0F], ( W[54 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + ((B & C) | (D & (B | C))) + 0x8F1BBCDC + ( temp = W[(55 - 3) & 0x0F] ^ W[(55 - 8) & 0x0F] ^ W[(55 - 14) & 0x0F] ^ W[ 55 & 0x0F], ( W[55 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + ((A & B) | (C & (A | B))) + 0x8F1BBCDC + ( temp = W[(56 - 3) & 0x0F] ^ W[(56 - 8) & 0x0F] ^ W[(56 - 14) & 0x0F] ^ W[ 56 & 0x0F], ( W[56 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + ((E & A) | (B & (E | A))) + 0x8F1BBCDC + ( temp = W[(57 - 3) & 0x0F] ^ W[(57 - 8) & 0x0F] ^ W[(57 - 14) & 0x0F] ^ W[ 57 & 0x0F], ( W[57 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + ((D & E) | (A & (D | E))) + 0x8F1BBCDC + ( temp = W[(58 - 3) & 0x0F] ^ W[(58 - 8) & 0x0F] ^ W[(58 - 14) & 0x0F] ^ W[ 58 & 0x0F], ( W[58 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + ((C & D) | (E & (C | D))) + 0x8F1BBCDC + ( temp = W[(59 - 3) & 0x0F] ^ W[(59 - 8) & 0x0F] ^ W[(59 - 14) & 0x0F] ^ W[ 59 & 0x0F], ( W[59 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };







    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0xCA62C1D6 + ( temp = W[(60 - 3) & 0x0F] ^ W[(60 - 8) & 0x0F] ^ W[(60 - 14) & 0x0F] ^ W[ 60 & 0x0F], ( W[60 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0xCA62C1D6 + ( temp = W[(61 - 3) & 0x0F] ^ W[(61 - 8) & 0x0F] ^ W[(61 - 14) & 0x0F] ^ W[ 61 & 0x0F], ( W[61 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0xCA62C1D6 + ( temp = W[(62 - 3) & 0x0F] ^ W[(62 - 8) & 0x0F] ^ W[(62 - 14) & 0x0F] ^ W[ 62 & 0x0F], ( W[62 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0xCA62C1D6 + ( temp = W[(63 - 3) & 0x0F] ^ W[(63 - 8) & 0x0F] ^ W[(63 - 14) & 0x0F] ^ W[ 63 & 0x0F], ( W[63 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0xCA62C1D6 + ( temp = W[(64 - 3) & 0x0F] ^ W[(64 - 8) & 0x0F] ^ W[(64 - 14) & 0x0F] ^ W[ 64 & 0x0F], ( W[64 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0xCA62C1D6 + ( temp = W[(65 - 3) & 0x0F] ^ W[(65 - 8) & 0x0F] ^ W[(65 - 14) & 0x0F] ^ W[ 65 & 0x0F], ( W[65 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0xCA62C1D6 + ( temp = W[(66 - 3) & 0x0F] ^ W[(66 - 8) & 0x0F] ^ W[(66 - 14) & 0x0F] ^ W[ 66 & 0x0F], ( W[66 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0xCA62C1D6 + ( temp = W[(67 - 3) & 0x0F] ^ W[(67 - 8) & 0x0F] ^ W[(67 - 14) & 0x0F] ^ W[ 67 & 0x0F], ( W[67 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0xCA62C1D6 + ( temp = W[(68 - 3) & 0x0F] ^ W[(68 - 8) & 0x0F] ^ W[(68 - 14) & 0x0F] ^ W[ 68 & 0x0F], ( W[68 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0xCA62C1D6 + ( temp = W[(69 - 3) & 0x0F] ^ W[(69 - 8) & 0x0F] ^ W[(69 - 14) & 0x0F] ^ W[ 69 & 0x0F], ( W[69 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0xCA62C1D6 + ( temp = W[(70 - 3) & 0x0F] ^ W[(70 - 8) & 0x0F] ^ W[(70 - 14) & 0x0F] ^ W[ 70 & 0x0F], ( W[70 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0xCA62C1D6 + ( temp = W[(71 - 3) & 0x0F] ^ W[(71 - 8) & 0x0F] ^ W[(71 - 14) & 0x0F] ^ W[ 71 & 0x0F], ( W[71 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0xCA62C1D6 + ( temp = W[(72 - 3) & 0x0F] ^ W[(72 - 8) & 0x0F] ^ W[(72 - 14) & 0x0F] ^ W[ 72 & 0x0F], ( W[72 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0xCA62C1D6 + ( temp = W[(73 - 3) & 0x0F] ^ W[(73 - 8) & 0x0F] ^ W[(73 - 14) & 0x0F] ^ W[ 73 & 0x0F], ( W[73 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0xCA62C1D6 + ( temp = W[(74 - 3) & 0x0F] ^ W[(74 - 8) & 0x0F] ^ W[(74 - 14) & 0x0F] ^ W[ 74 & 0x0F], ( W[74 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };
    { E += ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + (B ^ C ^ D) + 0xCA62C1D6 + ( temp = W[(75 - 3) & 0x0F] ^ W[(75 - 8) & 0x0F] ^ W[(75 - 14) & 0x0F] ^ W[ 75 & 0x0F], ( W[75 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); B = ((B << 30) | ((B & 0xFFFFFFFF) >> (32 - 30))); };
    { D += ((E << 5) | ((E & 0xFFFFFFFF) >> (32 - 5))) + (A ^ B ^ C) + 0xCA62C1D6 + ( temp = W[(76 - 3) & 0x0F] ^ W[(76 - 8) & 0x0F] ^ W[(76 - 14) & 0x0F] ^ W[ 76 & 0x0F], ( W[76 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); A = ((A << 30) | ((A & 0xFFFFFFFF) >> (32 - 30))); };
    { C += ((D << 5) | ((D & 0xFFFFFFFF) >> (32 - 5))) + (E ^ A ^ B) + 0xCA62C1D6 + ( temp = W[(77 - 3) & 0x0F] ^ W[(77 - 8) & 0x0F] ^ W[(77 - 14) & 0x0F] ^ W[ 77 & 0x0F], ( W[77 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); E = ((E << 30) | ((E & 0xFFFFFFFF) >> (32 - 30))); };
    { B += ((C << 5) | ((C & 0xFFFFFFFF) >> (32 - 5))) + (D ^ E ^ A) + 0xCA62C1D6 + ( temp = W[(78 - 3) & 0x0F] ^ W[(78 - 8) & 0x0F] ^ W[(78 - 14) & 0x0F] ^ W[ 78 & 0x0F], ( W[78 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); D = ((D << 30) | ((D & 0xFFFFFFFF) >> (32 - 30))); };
    { A += ((B << 5) | ((B & 0xFFFFFFFF) >> (32 - 5))) + (C ^ D ^ E) + 0xCA62C1D6 + ( temp = W[(79 - 3) & 0x0F] ^ W[(79 - 8) & 0x0F] ^ W[(79 - 14) & 0x0F] ^ W[ 79 & 0x0F], ( W[79 & 0x0F] = ((temp << 1) | ((temp & 0xFFFFFFFF) >> (32 - 1))) ) ); C = ((C << 30) | ((C & 0xFFFFFFFF) >> (32 - 30))); };




    ctx->state[0] += A;
    ctx->state[1] += B;
    ctx->state[2] += C;
    ctx->state[3] += D;
    ctx->state[4] += E;
}

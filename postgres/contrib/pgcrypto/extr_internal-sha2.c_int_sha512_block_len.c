
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_MD ;


 int PG_SHA512_BLOCK_LENGTH ;

__attribute__((used)) static unsigned
int_sha512_block_len(PX_MD *h)
{
 return PG_SHA512_BLOCK_LENGTH;
}

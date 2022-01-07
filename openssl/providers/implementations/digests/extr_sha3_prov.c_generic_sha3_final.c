
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KECCAK1600_CTX ;


 int sha3_final (unsigned char*,int *) ;

__attribute__((used)) static int generic_sha3_final(unsigned char *md, void *vctx)
{
    return sha3_final(md, (KECCAK1600_CTX *)vctx);
}

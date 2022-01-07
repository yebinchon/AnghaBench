
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int hash_df (int *,unsigned char*,unsigned char const,unsigned char const*,size_t,int *,int ,int *,int ) ;

__attribute__((used)) static int hash_df1(RAND_DRBG *drbg, unsigned char *out,
                    const unsigned char in_byte,
                    const unsigned char *in1, size_t in1len)
{
    return hash_df(drbg, out, in_byte, in1, in1len, ((void*)0), 0, ((void*)0), 0);
}

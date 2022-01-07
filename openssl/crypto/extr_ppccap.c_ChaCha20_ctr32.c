
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ChaCha20_ctr32_int (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ;
 int ChaCha20_ctr32_vmx (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ;
 int ChaCha20_ctr32_vsx (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ;
 int OPENSSL_ppccap_P ;
 int PPC_ALTIVEC ;
 int PPC_CRYPTO207 ;

void ChaCha20_ctr32(unsigned char *out, const unsigned char *inp,
                    size_t len, const unsigned int key[8],
                    const unsigned int counter[4])
{
    OPENSSL_ppccap_P & PPC_CRYPTO207
        ? ChaCha20_ctr32_vsx(out, inp, len, key, counter)
        : OPENSSL_ppccap_P & PPC_ALTIVEC
            ? ChaCha20_ctr32_vmx(out, inp, len, key, counter)
            : ChaCha20_ctr32_int(out, inp, len, key, counter);
}

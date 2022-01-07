
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OPENSSL_instrument_bus2_mfspr268 (unsigned int*,size_t,size_t) ;
 size_t OPENSSL_instrument_bus2_mftb (unsigned int*,size_t,size_t) ;
 int OPENSSL_ppccap_P ;
 int PPC_MFSPR268 ;
 int PPC_MFTB ;

size_t OPENSSL_instrument_bus2(unsigned int *out, size_t cnt, size_t max)
{
    if (OPENSSL_ppccap_P & PPC_MFTB)
        return OPENSSL_instrument_bus2_mftb(out, cnt, max);
    else if (OPENSSL_ppccap_P & PPC_MFSPR268)
        return OPENSSL_instrument_bus2_mfspr268(out, cnt, max);
    else
        return 0;
}

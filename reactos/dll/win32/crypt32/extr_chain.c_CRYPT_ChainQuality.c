
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TrustStatus; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef int DWORD ;
typedef TYPE_2__ CertificateChain ;


 int CERT_TRUST_INVALID_BASIC_CONSTRAINTS ;
 int CERT_TRUST_IS_NOT_SIGNATURE_VALID ;
 int CERT_TRUST_IS_NOT_TIME_NESTED ;
 int CERT_TRUST_IS_NOT_TIME_VALID ;
 int CERT_TRUST_IS_PARTIAL_CHAIN ;
 int CERT_TRUST_IS_UNTRUSTED_ROOT ;
 int CHAIN_QUALITY_BASIC_CONSTRAINTS ;
 int CHAIN_QUALITY_COMPLETE_CHAIN ;
 int CHAIN_QUALITY_HIGHEST ;
 int CHAIN_QUALITY_SIGNATURE_VALID ;
 int CHAIN_QUALITY_TIME_VALID ;
 int CHAIN_QUALITY_TRUSTED_ROOT ;
 scalar_t__ IS_TRUST_ERROR_SET (int *,int) ;

__attribute__((used)) static DWORD CRYPT_ChainQuality(const CertificateChain *chain)
{
    DWORD quality = CHAIN_QUALITY_HIGHEST;

    if (IS_TRUST_ERROR_SET(&chain->context.TrustStatus,
     CERT_TRUST_IS_UNTRUSTED_ROOT))
        quality &= ~CHAIN_QUALITY_TRUSTED_ROOT;
    if (IS_TRUST_ERROR_SET(&chain->context.TrustStatus,
     CERT_TRUST_INVALID_BASIC_CONSTRAINTS))
        quality &= ~CHAIN_QUALITY_BASIC_CONSTRAINTS;
    if (IS_TRUST_ERROR_SET(&chain->context.TrustStatus,
     CERT_TRUST_IS_PARTIAL_CHAIN))
        quality &= ~CHAIN_QUALITY_COMPLETE_CHAIN;
    if (IS_TRUST_ERROR_SET(&chain->context.TrustStatus,
     CERT_TRUST_IS_NOT_TIME_VALID | CERT_TRUST_IS_NOT_TIME_NESTED))
        quality &= ~CHAIN_QUALITY_TIME_VALID;
    if (IS_TRUST_ERROR_SET(&chain->context.TrustStatus,
     CERT_TRUST_IS_NOT_SIGNATURE_VALID))
        quality &= ~CHAIN_QUALITY_SIGNATURE_VALID;
    return quality;
}

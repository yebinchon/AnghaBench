
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClaimsSet; int ulUncompressedClaimsSetSize; int ulClaimsSetSize; int * member_6; int member_5; int member_4; int member_3; int member_2; int * member_1; int member_0; } ;
typedef int * PVOID ;
typedef int PCLAIMS_SET ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CLAIMS_SET_METADATA ;
typedef int BOOL ;


 int CLAIMS_COMPRESSION_FORMAT_NONE ;
 int FALSE ;
 int LocalFree (int ) ;
 scalar_t__ kull_m_rpc_EncodeClaimsSet (int *,int **,int *) ;
 int kull_m_rpc_EncodeClaimsSetMetaData (TYPE_1__**,int **,scalar_t__*) ;

BOOL kuhl_m_kerberos_claims_encode_ClaimsSet(PCLAIMS_SET claimsSet, PVOID *encoded, DWORD *dwEncoded)
{
 BOOL status = FALSE;
 CLAIMS_SET_METADATA metadata = {0, ((void*)0), CLAIMS_COMPRESSION_FORMAT_NONE, 0, 0, 0, ((void*)0)}, *pMetadata = &metadata;
 *encoded = ((void*)0);
 *dwEncoded = 0;
 if(kull_m_rpc_EncodeClaimsSet(&claimsSet, (PVOID *) &metadata.ClaimsSet, &metadata.ulUncompressedClaimsSetSize))
 {
  metadata.ulClaimsSetSize = metadata.ulUncompressedClaimsSetSize;
  status = kull_m_rpc_EncodeClaimsSetMetaData(&pMetadata, encoded, dwEncoded);
  LocalFree(metadata.ClaimsSet);
 }
 return status;
}

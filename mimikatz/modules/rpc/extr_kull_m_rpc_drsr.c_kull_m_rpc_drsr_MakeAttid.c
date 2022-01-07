
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int length; int value; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef scalar_t__* PSTR ;
typedef TYPE_1__ OssEncodedOID ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;
typedef int ATTRTYP ;


 int FALSE ;
 int PRINT_ERROR (char*) ;
 scalar_t__ kull_m_asn1_DotVal2Eoid (int ,TYPE_1__*) ;
 int kull_m_asn1_freeEnc (int ) ;
 int kull_m_rpc_drsr_MakeAttid_addPrefixToTable (int *,TYPE_1__*,int*,int ) ;
 scalar_t__* strrchr (int ,char) ;
 int strtoul (scalar_t__*,int *,int ) ;

BOOL kull_m_rpc_drsr_MakeAttid(SCHEMA_PREFIX_TABLE *prefixTable, LPCSTR szOid, ATTRTYP *att, BOOL toAdd)
{
 BOOL status = FALSE;
 DWORD lastValue, ndx;
 PSTR lastValueString;
 OssEncodedOID oidPrefix;

 if(lastValueString = strrchr(szOid, '.'))
 {
  if(*(lastValueString + 1))
  {
   lastValueString++;
   lastValue = strtoul(lastValueString, ((void*)0), 0);
   *att = (WORD) lastValue % 0x4000;
   if(*att >= 0x4000)
    *att += 0x8000;
   if(kull_m_asn1_DotVal2Eoid(szOid, &oidPrefix))
   {
    oidPrefix.length -= (lastValue < 0x80) ? 1 : 2;
    if(status = kull_m_rpc_drsr_MakeAttid_addPrefixToTable(prefixTable, &oidPrefix, &ndx, toAdd))
     *att |= ndx << 16;
    else PRINT_ERROR(L"kull_m_rpc_drsr_MakeAttid_addPrefixToTable\n");
    kull_m_asn1_freeEnc(oidPrefix.value);
   }
  }
 }
 return status;
}

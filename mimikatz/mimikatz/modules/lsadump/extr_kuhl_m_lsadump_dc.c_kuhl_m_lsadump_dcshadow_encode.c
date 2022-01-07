
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UNICODE_STRING ;
struct TYPE_10__ {int dwFlag; } ;
struct TYPE_8__ {int dwFlag; int usnTimeChanged; int usnOriginating; int uidOriginatingDsa; } ;
struct TYPE_9__ {TYPE_1__ MetaData; } ;
typedef TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef TYPE_3__* PDCSHADOW_PUSH_REQUEST_OBJECT ;
typedef int PDCSHADOW_PUSH_REQUEST ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef scalar_t__ BOOL ;


 int ERROR_SUCCESS ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OBJECT_DYNAMIC ;
 int PRINT_ERROR (char*) ;
 int REPLICATION_TIME_SET ;
 int REPLICATION_UID_SET ;
 int REPLICATION_USN_SET ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int *) ;
 int kuhl_m_lsadump_dcshadow_clean_push_request (int ) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_encode_add_attribute_if_needed (int ,int *,TYPE_3__*,TYPE_2__**) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_encode_add_object_if_needed (int ,int *,TYPE_3__**) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_encode_add_value (int *,TYPE_2__*,scalar_t__) ;
 int kuhl_m_lsadump_dcshadow_remove_attribute (int ,int *,int *) ;
 int kuhl_m_lsadump_dcshadow_remove_object (int ,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 scalar_t__ kull_m_string_stringToFileTime (int *,int *) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_lsadump_dcshadow_encode(PDCSHADOW_PUSH_REQUEST request, int argc, wchar_t * argv[])
{
 LPCWSTR szObject, szAttribute, szValue = ((void*)0), szSid = ((void*)0), szReplOriginatingUid = ((void*)0), szReplOriginatingUsn = ((void*)0), szReplOriginatingTime = ((void*)0);
 PDCSHADOW_PUSH_REQUEST_OBJECT pObject;
 PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE pAttribute;
 BOOL cleanData = kull_m_string_args_byName(argc, argv, L"clean", ((void*)0), ((void*)0)), multipleValues = kull_m_string_args_byName(argc, argv, L"multiple", ((void*)0), ((void*)0));
 UNICODE_STRING us;

 if(kull_m_string_args_byName(argc, argv, L"object", &szObject, ((void*)0)))
 {
  if(kull_m_string_args_byName(argc, argv, L"attribute", &szAttribute, ((void*)0)))
  {
   if(kull_m_string_args_byName(argc, argv, L"value", &szValue, ((void*)0)))
   {
    if(kuhl_m_lsadump_dcshadow_encode_add_object_if_needed(request, szObject, &pObject))
    {
     if(kuhl_m_lsadump_dcshadow_encode_add_attribute_if_needed(request, szAttribute, pObject, &pAttribute))
     {
      if(kuhl_m_lsadump_dcshadow_encode_add_value(szValue, pAttribute, multipleValues))
      {
       if(kull_m_string_args_byName(argc, argv, L"replOriginatingUid", &szReplOriginatingUid, ((void*)0)))
       {
        RtlInitUnicodeString(&us, szReplOriginatingUid);
        if(NT_SUCCESS(RtlGUIDFromString(&us, &(pAttribute->MetaData.uidOriginatingDsa))))
         pAttribute->MetaData.dwFlag |= REPLICATION_UID_SET;
        else PRINT_ERROR(L"unable parse replOriginatingUid\n");
       }
       if(kull_m_string_args_byName(argc, argv, L"replOriginatingUsn", &szReplOriginatingUsn, ((void*)0)))
       {
        pAttribute->MetaData.usnOriginating = wcstoul(szReplOriginatingUsn, ((void*)0), 0);
        pAttribute->MetaData.dwFlag |= REPLICATION_USN_SET;
       }
       if(kull_m_string_args_byName(argc, argv, L"replOriginatingTime", &szReplOriginatingTime, ((void*)0)))
       {
        if(kull_m_string_stringToFileTime(szReplOriginatingTime, &pAttribute->MetaData.usnTimeChanged))
         pAttribute->MetaData.dwFlag |= REPLICATION_TIME_SET;
        else PRINT_ERROR(L"unable parse replOriginatingTime\n");
       }
       if(kull_m_string_args_byName(argc, argv, L"dynamic", ((void*)0), ((void*)0)))
       {
        pObject->dwFlag |= OBJECT_DYNAMIC;
       }
      }
      else PRINT_ERROR(L"unable to set value\n");
     }
     else PRINT_ERROR(L"unable to add attribute\n");
    }
    else PRINT_ERROR(L"unable to add object\n");
   }
   else if(cleanData)
   {
    if(!kuhl_m_lsadump_dcshadow_remove_attribute(request, szObject, szAttribute))
     PRINT_ERROR(L"object or attribute not found\n");
   }
   else PRINT_ERROR(L"value missing\n");
  }
  else if(cleanData)
  {
   if(!kuhl_m_lsadump_dcshadow_remove_object(request, szObject))
    PRINT_ERROR(L"object not found\n");
  }
  else PRINT_ERROR(L"attribute missing\n");
 }
 else
 {
  if(cleanData)
   kuhl_m_lsadump_dcshadow_clean_push_request(request);
  else PRINT_ERROR(L"object missing\n");
 }
 return ERROR_SUCCESS;
}

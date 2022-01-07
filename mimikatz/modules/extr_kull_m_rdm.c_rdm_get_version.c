
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PSTR ;
typedef int HANDLE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (int *) ;
 int RDM_IOCTL_GET_VERSION ;
 int RtlCopyMemory (scalar_t__,int *,int ) ;
 int TRUE ;
 scalar_t__ rdm_send_receive (int ,int ,int *,int ,int **,int *) ;

BOOL rdm_get_version(HANDLE hFile, PSTR *version)
{
 BOOL status = FALSE;
 BYTE *data, szData;

 if(rdm_send_receive(hFile, RDM_IOCTL_GET_VERSION, ((void*)0), 0, &data, &szData))
 {
  if(data)
  {
   if(*version = (PSTR) LocalAlloc(LPTR, szData + 1))
   {
    RtlCopyMemory(*version, data, szData);
    status = TRUE;
   }
   LocalFree(data);
  }
 }
 return status;
}

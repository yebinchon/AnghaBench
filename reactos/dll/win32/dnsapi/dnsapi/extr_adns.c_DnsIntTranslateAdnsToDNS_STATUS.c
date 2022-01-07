
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DNS_STATUS ;


 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;




DNS_STATUS
DnsIntTranslateAdnsToDNS_STATUS(int Status)
{
    switch(Status)
    {
        case 129:
            return ERROR_SUCCESS;

        case 130:
        case 128:
        default:
            return ERROR_OUTOFMEMORY;
    }
}

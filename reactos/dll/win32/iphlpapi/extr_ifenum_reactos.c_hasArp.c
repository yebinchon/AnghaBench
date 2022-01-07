
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int type ;
typedef int req ;
struct TYPE_8__ {int tei_instance; int tei_entity; } ;
struct TYPE_9__ {TYPE_1__ toi_entity; int toi_id; int toi_type; int toi_class; } ;
struct TYPE_11__ {TYPE_2__ ID; } ;
struct TYPE_10__ {int tei_instance; } ;
typedef TYPE_3__ TDIEntityID ;
typedef TYPE_4__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int AT_ARP ;
 int AT_ENTITY ;
 int DeviceIoControl (int ,int ,TYPE_4__*,int,int*,int,int*,int *) ;
 int ENTITY_TYPE_ID ;
 int FALSE ;
 int INFO_CLASS_GENERIC ;
 int INFO_TYPE_PROVIDER ;
 int IOCTL_TCP_QUERY_INFORMATION_EX ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 TYPE_4__ TCP_REQUEST_QUERY_INFORMATION_INIT ;

BOOL hasArp( HANDLE tcpFile, TDIEntityID *arp_maybe ) {
    TCP_REQUEST_QUERY_INFORMATION_EX req = TCP_REQUEST_QUERY_INFORMATION_INIT;
    NTSTATUS status = STATUS_SUCCESS;
    DWORD returnSize, type;

    req.ID.toi_class = INFO_CLASS_GENERIC;
    req.ID.toi_type = INFO_TYPE_PROVIDER;
    req.ID.toi_id = ENTITY_TYPE_ID;
    req.ID.toi_entity.tei_entity = AT_ENTITY;
    req.ID.toi_entity.tei_instance = arp_maybe->tei_instance;

    status = DeviceIoControl( tcpFile,
                              IOCTL_TCP_QUERY_INFORMATION_EX,
                              &req,
                              sizeof(req),
                              &type,
                              sizeof(type),
                              &returnSize,
                              ((void*)0) );
    if( !NT_SUCCESS(status) ) return FALSE;

    return (type & AT_ARP);
}

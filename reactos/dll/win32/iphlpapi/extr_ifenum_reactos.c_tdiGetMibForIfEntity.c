
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int req ;
struct TYPE_12__ {int* if_physaddr; int if_descr; int if_descrlen; int if_physaddrlen; int if_speed; int if_mtu; int if_type; int if_index; } ;
struct TYPE_15__ {TYPE_2__ ent; } ;
struct TYPE_13__ {int tei_instance; } ;
struct TYPE_11__ {TYPE_3__ toi_entity; int toi_id; int toi_type; int toi_class; } ;
struct TYPE_14__ {TYPE_1__ ID; } ;
typedef TYPE_3__ TDIEntityID ;
typedef TYPE_4__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef int NTSTATUS ;
typedef TYPE_5__ IFEntrySafelySized ;
typedef int HANDLE ;
typedef int DWORD ;


 int DeviceIoControl (int ,int ,TYPE_4__*,int,TYPE_5__*,int,int *,int *) ;
 int IF_MIB_STATS_ID ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int IOCTL_TCP_QUERY_INFORMATION_EX ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 TYPE_4__ TCP_REQUEST_QUERY_INFORMATION_INIT ;
 int TRACE (char*,int,...) ;
 int WARN (char*,...) ;

NTSTATUS tdiGetMibForIfEntity
( HANDLE tcpFile, TDIEntityID *ent, IFEntrySafelySized *entry ) {
    TCP_REQUEST_QUERY_INFORMATION_EX req = TCP_REQUEST_QUERY_INFORMATION_INIT;
    NTSTATUS status = STATUS_SUCCESS;
    DWORD returnSize;

    WARN("TdiGetMibForIfEntity(tcpFile %p,entityId %p)\n",
           tcpFile, ent->tei_instance);

    req.ID.toi_class = INFO_CLASS_PROTOCOL;
    req.ID.toi_type = INFO_TYPE_PROVIDER;
    req.ID.toi_id = IF_MIB_STATS_ID;
    req.ID.toi_entity = *ent;

    status = DeviceIoControl( tcpFile,
                              IOCTL_TCP_QUERY_INFORMATION_EX,
                              &req,
                              sizeof(req),
                              entry,
                              sizeof(*entry),
                              &returnSize,
                              ((void*)0) );

    if(!status)
    {
            WARN("IOCTL Failed\n");
            return STATUS_UNSUCCESSFUL;
    }

    TRACE("TdiGetMibForIfEntity() => {\n"
           "  if_index ....................... %x\n"
           "  if_type ........................ %x\n"
           "  if_mtu ......................... %d\n"
           "  if_speed ....................... %x\n"
           "  if_physaddrlen ................. %d\n",
           entry->ent.if_index,
           entry->ent.if_type,
           entry->ent.if_mtu,
           entry->ent.if_speed,
           entry->ent.if_physaddrlen);
    TRACE("  if_physaddr .................... %02x:%02x:%02x:%02x:%02x:%02x\n"
           "  if_descr ....................... %*s\n",
           entry->ent.if_physaddr[0] & 0xff,
           entry->ent.if_physaddr[1] & 0xff,
           entry->ent.if_physaddr[2] & 0xff,
           entry->ent.if_physaddr[3] & 0xff,
           entry->ent.if_physaddr[4] & 0xff,
           entry->ent.if_physaddr[5] & 0xff,
           entry->ent.if_descrlen,
           entry->ent.if_descr);
    TRACE("} status %08x\n",status);

    return STATUS_SUCCESS;
}

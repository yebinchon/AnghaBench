
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tei_instance; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int PVOID ;
typedef int PDWORD ;
typedef int NTSTATUS ;
typedef int IPAddrEntry ;
typedef int HANDLE ;


 int CL_NL_ENTITY ;
 int INFO_CLASS_PROTOCOL ;
 int INFO_TYPE_PROVIDER ;
 int IP_MIB_ADDRTABLE_ENTRY_ID ;
 int TRACE (char*,int ,int ) ;
 int tdiGetSetOfThings (int ,int ,int ,int ,int ,int ,int ,int,int *,int ) ;

NTSTATUS tdiGetIpAddrsForIpEntity
( HANDLE tcpFile, TDIEntityID *ent, IPAddrEntry **addrs, PDWORD numAddrs ) {
    NTSTATUS status;

    TRACE("TdiGetIpAddrsForIpEntity(tcpFile 0x%p, entityId 0x%x)\n",
          tcpFile, ent->tei_instance);

    status = tdiGetSetOfThings( tcpFile,
                                INFO_CLASS_PROTOCOL,
                                INFO_TYPE_PROVIDER,
                                IP_MIB_ADDRTABLE_ENTRY_ID,
                                CL_NL_ENTITY,
    ent->tei_instance,
                                0,
                                sizeof(IPAddrEntry),
                                (PVOID *)addrs,
                                numAddrs );

    return status;
}

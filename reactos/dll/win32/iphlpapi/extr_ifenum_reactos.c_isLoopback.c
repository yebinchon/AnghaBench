
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ if_type; } ;
struct TYPE_5__ {TYPE_1__ ent; } ;
typedef int TDIEntityID ;
typedef int NTSTATUS ;
typedef TYPE_2__ IFEntrySafelySized ;
typedef int HANDLE ;
typedef int BOOL ;


 scalar_t__ IFENT_SOFTWARE_LOOPBACK ;
 scalar_t__ NT_SUCCESS (int ) ;
 int tdiGetMibForIfEntity (int ,int *,TYPE_2__*) ;

BOOL isLoopback( HANDLE tcpFile, TDIEntityID *loop_maybe ) {
    IFEntrySafelySized entryInfo;
    NTSTATUS status;

    status = tdiGetMibForIfEntity( tcpFile,
                                   loop_maybe,
                                   &entryInfo );

    return NT_SUCCESS(status) &&
           (entryInfo.ent.if_type == IFENT_SOFTWARE_LOOPBACK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tei_entity; } ;
typedef TYPE_1__ TDIEntityID ;
typedef int HANDLE ;
typedef int BOOL ;


 scalar_t__ CL_NL_ENTITY ;
 scalar_t__ CO_NL_ENTITY ;

BOOL isIpEntity( HANDLE tcpFile, TDIEntityID *ent ) {
    return (ent->tei_entity == CL_NL_ENTITY ||
            ent->tei_entity == CO_NL_ENTITY);
}

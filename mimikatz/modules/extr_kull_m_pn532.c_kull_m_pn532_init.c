
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int descr; int suppdata; int communicator; } ;
typedef int PKULL_M_PN532_COMM_CALLBACK ;
typedef TYPE_1__* PKULL_M_PN532_COMM ;
typedef int LPVOID ;
typedef int BOOL ;



void kull_m_pn532_init(PKULL_M_PN532_COMM_CALLBACK communicator, LPVOID suppdata, BOOL descr, PKULL_M_PN532_COMM comm)
{
 comm->communicator = communicator;
 comm->suppdata = suppdata;
 comm->descr = descr;
}

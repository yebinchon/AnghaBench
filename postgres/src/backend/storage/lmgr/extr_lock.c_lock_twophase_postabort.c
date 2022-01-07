
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int TransactionId ;


 int lock_twophase_postcommit (int ,int ,void*,int ) ;

void
lock_twophase_postabort(TransactionId xid, uint16 info,
      void *recdata, uint32 len)
{
 lock_twophase_postcommit(xid, info, recdata, len);
}

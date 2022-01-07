
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_mq_handle ;
typedef int dsm_segment ;
typedef int Datum ;


 int DestRemote ;
 int FrontendProtocol ;
 int PG_PROTOCOL_LATEST ;
 int * PqCommMethods ;
 int PqCommMqMethods ;
 int on_dsm_detach (int *,int ,int ) ;
 int pq_cleanup_redirect_to_shm_mq ;
 int * pq_mq_handle ;
 int whereToSendOutput ;

void
pq_redirect_to_shm_mq(dsm_segment *seg, shm_mq_handle *mqh)
{
 PqCommMethods = &PqCommMqMethods;
 pq_mq_handle = mqh;
 whereToSendOutput = DestRemote;
 FrontendProtocol = PG_PROTOCOL_LATEST;
 on_dsm_detach(seg, pq_cleanup_redirect_to_shm_mq, (Datum) 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int Datum ;


 int DestNone ;
 int * pq_mq_handle ;
 int whereToSendOutput ;

__attribute__((used)) static void
pq_cleanup_redirect_to_shm_mq(dsm_segment *seg, Datum arg)
{
 pq_mq_handle = ((void*)0);
 whereToSendOutput = DestNone;
}

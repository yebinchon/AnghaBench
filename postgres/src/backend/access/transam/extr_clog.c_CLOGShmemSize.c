
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int CLOGShmemBuffers () ;
 int CLOG_LSNS_PER_PAGE ;
 int SimpleLruShmemSize (int ,int ) ;

Size
CLOGShmemSize(void)
{
 return SimpleLruShmemSize(CLOGShmemBuffers(), CLOG_LSNS_PER_PAGE);
}

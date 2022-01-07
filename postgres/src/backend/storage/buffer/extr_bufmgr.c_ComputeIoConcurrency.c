
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MAX ;
 int MAX_IO_CONCURRENCY ;
 int Max (int,int ) ;
 int Min (int ,int ) ;

bool
ComputeIoConcurrency(int io_concurrency, double *target)
{
 double new_prefetch_pages = 0.0;
 int i;





 io_concurrency = Min(Max(io_concurrency, 0), MAX_IO_CONCURRENCY);
 for (i = 1; i <= io_concurrency; i++)
  new_prefetch_pages += (double) io_concurrency / (double) i;

 *target = new_prefetch_pages;


 return (new_prefetch_pages >= 0.0 && new_prefetch_pages < (double) INT_MAX);
}

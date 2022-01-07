
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef scalar_t__ ngx_atomic_t ;
typedef int ngx_atomic_int_t ;


 scalar_t__ ngx_atomic_cmp_set (scalar_t__*,int ,int ) ;
 int ngx_cpu_pause () ;
 int ngx_ncpu ;
 int ngx_sched_yield () ;

void
ngx_spinlock(ngx_atomic_t *lock, ngx_atomic_int_t value, ngx_uint_t spin)
{
}

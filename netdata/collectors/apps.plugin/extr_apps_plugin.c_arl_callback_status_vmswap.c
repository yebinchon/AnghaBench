
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct arl_callback_ptr {int line; int ff; TYPE_1__* p; } ;
struct TYPE_2__ {int status_vmswap; } ;


 int procfile_lineword (int ,int ,int) ;
 int procfile_linewords (int ,int ) ;
 int str2kernel_uint_t (int ) ;
 scalar_t__ unlikely (int) ;

void arl_callback_status_vmswap(const char *name, uint32_t hash, const char *value, void *dst) {
    (void)name; (void)hash; (void)value;
    struct arl_callback_ptr *aptr = (struct arl_callback_ptr *)dst;
    if(unlikely(procfile_linewords(aptr->ff, aptr->line) < 3)) return;

    aptr->p->status_vmswap = str2kernel_uint_t(procfile_lineword(aptr->ff, aptr->line, 1));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uid_t ;
struct arl_callback_ptr {TYPE_1__* p; int line; int ff; } ;
struct TYPE_2__ {scalar_t__ gid; } ;


 scalar_t__ likely (int ) ;
 char* procfile_lineword (int ,int ,int) ;
 int procfile_linewords (int ,int ) ;
 scalar_t__ str2l (char const*) ;
 scalar_t__ unlikely (int) ;

void arl_callback_status_gid(const char *name, uint32_t hash, const char *value, void *dst) {
    (void)name; (void)hash; (void)value;
    struct arl_callback_ptr *aptr = (struct arl_callback_ptr *)dst;
    if(unlikely(procfile_linewords(aptr->ff, aptr->line) < 5)) return;


    const char *effective_gid = procfile_lineword(aptr->ff, aptr->line, 2);



    if(likely(effective_gid && *effective_gid))
        aptr->p->gid = (uid_t)str2l(effective_gid);
}

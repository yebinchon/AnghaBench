
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int qf_refcount; } ;
typedef TYPE_1__ qf_info_T ;


 scalar_t__ alloc (unsigned int) ;
 int vim_memset (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static qf_info_T *
ll_new_list()
{
    qf_info_T *qi;

    qi = (qf_info_T *)alloc((unsigned)sizeof(qf_info_T));
    if (qi != ((void*)0))
    {
 vim_memset(qi, 0, (size_t)(sizeof(qf_info_T)));
 qi->qf_refcount++;
    }

    return qi;
}

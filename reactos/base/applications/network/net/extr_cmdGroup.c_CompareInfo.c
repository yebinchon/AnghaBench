
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int grpi0_name; } ;
typedef TYPE_1__* PGROUP_INFO_0 ;


 int _wcsicmp (int ,int ) ;

__attribute__((used)) static
int
CompareInfo(const void *a,
            const void *b)
{
    return _wcsicmp(((PGROUP_INFO_0)a)->grpi0_name,
                    ((PGROUP_INFO_0)b)->grpi0_name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int param_name; } ;
typedef TYPE_1__ MIME_PARAM ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int mime_param_cmp(const MIME_PARAM *const *a,
                          const MIME_PARAM *const *b)
{
    if (!(*a)->param_name || !(*b)->param_name)
        return ! !(*a)->param_name - ! !(*b)->param_name;
    return strcmp((*a)->param_name, (*b)->param_name);
}

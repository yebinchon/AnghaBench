
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* builtin_info; } ;
typedef TYPE_2__ jsdisp_t ;
typedef scalar_t__ jsclass_t ;
struct TYPE_4__ {scalar_t__ class; } ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_class(jsdisp_t *jsdisp, jsclass_t class)
{
    return jsdisp->builtin_info->class == class;
}

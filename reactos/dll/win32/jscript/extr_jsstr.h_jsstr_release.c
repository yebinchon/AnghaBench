
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ jsstr_t ;


 int jsstr_free (TYPE_1__*) ;

__attribute__((used)) static inline void jsstr_release(jsstr_t *str)
{
    if(!--str->ref)
        jsstr_free(str);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * value; scalar_t__ length; scalar_t__ size; } ;
typedef TYPE_1__ strbuffer_t ;


 int jsonp_free (int *) ;

void strbuffer_close(strbuffer_t *strbuff)
{
    if(strbuff->value)
        jsonp_free(strbuff->value);

    strbuff->size = 0;
    strbuff->length = 0;
    strbuff->value = ((void*)0);
}

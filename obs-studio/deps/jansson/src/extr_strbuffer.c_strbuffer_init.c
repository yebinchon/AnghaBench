
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; int size; scalar_t__ length; } ;
typedef TYPE_1__ strbuffer_t ;


 int STRBUFFER_MIN_SIZE ;
 char* jsonp_malloc (int ) ;

int strbuffer_init(strbuffer_t *strbuff)
{
    strbuff->size = STRBUFFER_MIN_SIZE;
    strbuff->length = 0;

    strbuff->value = jsonp_malloc(strbuff->size);
    if(!strbuff->value)
        return -1;


    strbuff->value[0] = '\0';
    return 0;
}

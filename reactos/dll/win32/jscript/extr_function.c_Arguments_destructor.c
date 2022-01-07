
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_10__ {unsigned int argc; TYPE_2__* function; struct TYPE_10__* buf; } ;
struct TYPE_8__ {int dispex; } ;
struct TYPE_9__ {TYPE_1__ function; } ;
typedef TYPE_3__ ArgumentsInstance ;


 int TRACE (char*,TYPE_3__*) ;
 TYPE_3__* arguments_from_jsdisp (int *) ;
 int heap_free (TYPE_3__*) ;
 int jsdisp_release (int *) ;
 int jsval_release (TYPE_3__) ;

__attribute__((used)) static void Arguments_destructor(jsdisp_t *jsdisp)
{
    ArgumentsInstance *arguments = arguments_from_jsdisp(jsdisp);

    TRACE("(%p)\n", arguments);

    if(arguments->buf) {
        unsigned i;
        for(i = 0; i < arguments->argc; i++)
            jsval_release(arguments->buf[i]);
        heap_free(arguments->buf);
    }

    jsdisp_release(&arguments->function->function.dispex);
    heap_free(arguments);
}

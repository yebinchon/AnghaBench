
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ numeric ;


 int digitbuf_free (int ) ;
 int free (TYPE_1__*) ;

void
PGTYPESnumeric_free(numeric *var)
{
 digitbuf_free(var->buf);
 free(var);
}

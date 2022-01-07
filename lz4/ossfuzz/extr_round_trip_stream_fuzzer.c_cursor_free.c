
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ cursor_t ;


 int free (int ) ;

void cursor_free(cursor_t cursor)
{
    free(cursor.buf);
}

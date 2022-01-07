
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y_size; } ;


 int free_yank (int ) ;
 TYPE_1__* y_current ;

__attribute__((used)) static void
free_yank_all()
{
    free_yank(y_current->y_size);
}

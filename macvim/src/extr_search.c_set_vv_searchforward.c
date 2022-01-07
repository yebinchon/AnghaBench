
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char dir; } ;
struct TYPE_4__ {TYPE_1__ off; } ;


 int VV_SEARCHFORWARD ;
 int set_vim_var_nr (int ,long) ;
 TYPE_2__* spats ;

__attribute__((used)) static void
set_vv_searchforward()
{
    set_vim_var_nr(VV_SEARCHFORWARD, (long)(spats[0].off.dir == '/'));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_index_val; int last_index; } ;
typedef TYPE_1__ RegExpInstance ;
typedef int DWORD ;


 int jsval_number (int ) ;
 int jsval_release (int ) ;

__attribute__((used)) static void set_last_index(RegExpInstance *This, DWORD last_index)
{
    This->last_index = last_index;
    jsval_release(This->last_index_val);
    This->last_index_val = jsval_number(last_index);
}

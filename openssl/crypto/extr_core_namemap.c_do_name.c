
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ number; int data; int (* fn ) (int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ number; int name; } ;
typedef TYPE_1__ NAMENUM_ENTRY ;
typedef TYPE_2__ DOALL_NAMES_DATA ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void do_name(const NAMENUM_ENTRY *namenum, DOALL_NAMES_DATA *data)
{
    if (namenum->number == data->number)
        data->fn(namenum->name, data->data);
}

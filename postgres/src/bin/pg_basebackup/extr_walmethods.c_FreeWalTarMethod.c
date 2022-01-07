
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* zlibOut; scalar_t__ compression; struct TYPE_3__* tarfilename; } ;


 int pg_free (TYPE_1__*) ;
 TYPE_1__* tar_data ;

void
FreeWalTarMethod(void)
{
 pg_free(tar_data->tarfilename);




 pg_free(tar_data);
}

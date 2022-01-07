
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* basedir; } ;


 TYPE_1__* dir_data ;
 int pg_free (TYPE_1__*) ;

void
FreeWalDirectoryMethod(void)
{
 pg_free(dir_data->basedir);
 pg_free(dir_data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; int val; int key; } ;
typedef TYPE_1__ line_type ;


 int inifile_key_free (int *) ;
 int inifile_val_free (int *) ;

void inifile_line_free(line_type *ln)
{
 inifile_key_free(&ln->key);
 inifile_val_free(&ln->val);
 ln->pos = 0;
}

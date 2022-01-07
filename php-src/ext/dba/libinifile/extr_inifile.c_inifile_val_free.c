
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ val_type ;


 int efree (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void inifile_val_free(val_type *val)
{
 if (val->value) {
  efree(val->value);
 }
 memset(val, 0, sizeof(val_type));
}

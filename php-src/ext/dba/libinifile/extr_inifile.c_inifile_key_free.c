
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; scalar_t__ group; } ;
typedef TYPE_1__ key_type ;


 int efree (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void inifile_key_free(key_type *key)
{
 if (key->group) {
  efree(key->group);
 }
 if (key->name) {
  efree(key->name);
 }
 memset(key, 0, sizeof(key_type));
}

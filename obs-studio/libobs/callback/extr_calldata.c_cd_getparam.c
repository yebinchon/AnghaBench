
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * stack; int size; } ;
typedef TYPE_1__ calldata_t ;


 size_t cd_serialize_size (int **) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool cd_getparam(const calldata_t *data, const char *name, uint8_t **pos)
{
 size_t name_size;

 if (!data->size)
  return 0;

 *pos = data->stack;

 name_size = cd_serialize_size(pos);
 while (name_size != 0) {
  const char *param_name = (const char *)*pos;
  size_t param_size;

  *pos += name_size;
  if (strcmp(param_name, name) == 0)
   return 1;

  param_size = cd_serialize_size(pos);
  *pos += param_size;

  name_size = cd_serialize_size(pos);
 }

 *pos -= sizeof(size_t);
 return 0;
}

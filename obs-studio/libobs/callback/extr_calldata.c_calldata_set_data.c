
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t size; int * stack; int fixed; } ;
typedef TYPE_1__ calldata_t ;


 int cd_copy_data (int **,void const*,size_t) ;
 int cd_copy_string (int **,char const*,int ) ;
 int cd_ensure_capacity (TYPE_1__*,int **,size_t) ;
 scalar_t__ cd_getparam (TYPE_1__*,char const*,int **) ;
 int cd_set_first_param (TYPE_1__*,char const*,void const*,size_t) ;
 int memcpy (size_t*,int *,int) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int strlen (char const*) ;

void calldata_set_data(calldata_t *data, const char *name, const void *in,
         size_t size)
{
 uint8_t *pos = ((void*)0);

 if (!data || !name || !*name)
  return;

 if (!data->fixed && !data->stack) {
  cd_set_first_param(data, name, in, size);
  return;
 }

 if (cd_getparam(data, name, &pos)) {
  size_t cur_size;
  memcpy(&cur_size, pos, sizeof(size_t));

  if (cur_size < size) {
   size_t offset = size - cur_size;
   size_t bytes = data->size;

   if (!cd_ensure_capacity(data, &pos, bytes + offset))
    return;
   memmove(pos + offset, pos, bytes - (pos - data->stack));
   data->size += offset;

  } else if (cur_size > size) {
   size_t offset = cur_size - size;
   size_t bytes = data->size - offset;

   memmove(pos, pos + offset, bytes - (pos - data->stack));
   data->size -= offset;
  }

  cd_copy_data(&pos, in, size);

 } else {
  size_t name_len = strlen(name) + 1;
  size_t offset = name_len + size + sizeof(size_t) * 2;
  if (!cd_ensure_capacity(data, &pos, data->size + offset))
   return;
  data->size += offset;

  cd_copy_string(&pos, name, 0);
  cd_copy_data(&pos, in, size);
  memset(pos, 0, sizeof(size_t));
 }
}

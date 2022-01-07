
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t capacity; int * stack; scalar_t__ fixed; } ;
typedef TYPE_1__ calldata_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int * brealloc (int *,size_t) ;

__attribute__((used)) static inline bool cd_ensure_capacity(calldata_t *data, uint8_t **pos,
          size_t new_size)
{
 size_t offset;
 size_t new_capacity;

 if (new_size < data->capacity)
  return 1;
 if (data->fixed) {
  blog(LOG_ERROR, "Tried to go above fixed calldata stack size!");
  return 0;
 }

 offset = *pos - data->stack;

 new_capacity = data->capacity * 2;
 if (new_capacity < new_size)
  new_capacity = new_size;

 data->stack = brealloc(data->stack, new_capacity);
 data->capacity = new_capacity;

 *pos = data->stack + offset;
 return 1;
}

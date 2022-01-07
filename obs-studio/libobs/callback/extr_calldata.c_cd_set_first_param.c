
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t size; size_t capacity; int * stack; } ;
typedef TYPE_1__ calldata_t ;


 int * bmalloc (size_t) ;
 int cd_copy_data (int **,void const*,size_t) ;
 int cd_copy_string (int **,char const*,size_t) ;
 int memset (int *,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void cd_set_first_param(calldata_t *data, const char *name,
          const void *in, size_t size)
{
 uint8_t *pos;
 size_t capacity;
 size_t name_len = strlen(name) + 1;

 capacity = sizeof(size_t) * 3 + name_len + size;
 data->size = capacity;

 if (capacity < 128)
  capacity = 128;

 data->capacity = capacity;
 data->stack = bmalloc(capacity);

 pos = data->stack;
 cd_copy_string(&pos, name, name_len);
 cd_copy_data(&pos, in, size);
 memset(pos, 0, sizeof(size_t));
}

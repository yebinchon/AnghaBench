
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct calldata {size_t capacity; int fixed; scalar_t__ size; int * stack; } ;


 int calldata_clear (struct calldata*) ;

__attribute__((used)) static inline void calldata_init_fixed(struct calldata *data, uint8_t *stack,
           size_t size)
{
 data->stack = stack;
 data->capacity = size;
 data->fixed = 1;
 data->size = 0;
 calldata_clear(data);
}

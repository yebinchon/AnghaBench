
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calldata {int size; scalar_t__ stack; } ;


 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static inline void calldata_clear(struct calldata *data)
{
 if (data->stack) {
  data->size = sizeof(size_t);
  memset(data->stack, 0, sizeof(size_t));
 }
}

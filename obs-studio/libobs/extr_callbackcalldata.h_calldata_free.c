
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calldata {int stack; int fixed; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void calldata_free(struct calldata *data)
{
 if (!data->fixed)
  bfree(data->stack);
}

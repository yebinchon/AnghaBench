
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _CONSTRUCTOR_ORDER_BACKWARD ;
 scalar_t__ __constructor_order ;

__attribute__((used)) static void __attribute__((constructor))
__constructor_order_last(void)
{
 if (!__constructor_order)
  __constructor_order = _CONSTRUCTOR_ORDER_BACKWARD;
}

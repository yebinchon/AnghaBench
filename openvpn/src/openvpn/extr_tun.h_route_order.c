
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUTE_BEFORE_TUN ;
 int ROUTE_ORDER_DEFAULT ;

__attribute__((used)) static inline int
route_order(void)
{



    return ROUTE_ORDER_DEFAULT;

}

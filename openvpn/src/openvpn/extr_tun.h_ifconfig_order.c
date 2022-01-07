
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFCONFIG_AFTER_TUN_OPEN ;
 int IFCONFIG_BEFORE_TUN_OPEN ;
 int IFCONFIG_DEFAULT ;

__attribute__((used)) static inline int
ifconfig_order(void)
{
    return IFCONFIG_DEFAULT;

}

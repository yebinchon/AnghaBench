
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout_t ;


 int WHEEL_BIT ;
 int WHEEL_MASK ;

__attribute__((used)) static inline int timeout_slot(int wheel, timeout_t expires)
{
    const timeout_t wheel_mask = (timeout_t)WHEEL_MASK;
    const timeout_t slot =
        wheel_mask & ((expires >> (wheel * WHEEL_BIT)) - !!wheel);

    return (int)slot;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout_t ;


 int MIN (int ,int ) ;
 int TIMEOUT_MAX ;
 int WHEEL_BIT ;
 int fls (int ) ;

__attribute__((used)) static inline int timeout_wheel(timeout_t timeout)
{

    return (fls(MIN(timeout, TIMEOUT_MAX)) - 1) / WHEEL_BIT;
}

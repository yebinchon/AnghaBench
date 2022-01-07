
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ REAL ;
typedef int INT ;


 int floorf (scalar_t__) ;

__attribute__((used)) static inline INT gdip_round(REAL x)
{
    return (INT) floorf(x + 0.5);
}

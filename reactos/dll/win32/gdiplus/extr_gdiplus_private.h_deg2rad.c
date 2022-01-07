
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;


 double M_PI ;

__attribute__((used)) static inline REAL deg2rad(REAL degrees)
{
    return M_PI * degrees / 180.0;
}

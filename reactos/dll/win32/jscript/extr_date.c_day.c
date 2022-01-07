
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int MS_PER_DAY ;
 int floor (int) ;

__attribute__((used)) static inline DOUBLE day(DOUBLE time)
{
    return floor(time / MS_PER_DAY);
}

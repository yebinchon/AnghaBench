
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lrint (int) ;

__attribute__((used)) static int rate_from_speed(int rate, double speed)
{
    return lrint(rate * speed);
}

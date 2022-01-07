
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double app_tminterval (int,int) ;

__attribute__((used)) static double tm_Time_F(int s)
{
    return app_tminterval(s, 1);
}

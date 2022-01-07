
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double,double) ;

__attribute__((used)) static double db_gain(double db)
{
    return pow(10.0, db/20.0);
}

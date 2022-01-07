
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qca955x_set_speed_sgmii (int,int) ;

__attribute__((used)) static void qca9558_set_speed_sgmii(int speed)
{
 qca955x_set_speed_sgmii(1, speed);
}

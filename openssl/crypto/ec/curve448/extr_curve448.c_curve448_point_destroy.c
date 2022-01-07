
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curve448_point_t ;


 int OPENSSL_cleanse (int ,int) ;

void curve448_point_destroy(curve448_point_t point)
{
    OPENSSL_cleanse(point, sizeof(curve448_point_t));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_config {scalar_t__ radius; scalar_t__ clamp; int window; int kernel; } ;


 scalar_t__ scaler_fun_eq (int ,int ) ;

__attribute__((used)) static bool scaler_conf_eq(struct scaler_config a, struct scaler_config b)
{


    return scaler_fun_eq(a.kernel, b.kernel) &&
           scaler_fun_eq(a.window, b.window) &&
           a.radius == b.radius &&
           a.clamp == b.clamp;
}

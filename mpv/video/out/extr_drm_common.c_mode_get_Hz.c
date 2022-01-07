
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double clock; double htotal; double vtotal; } ;
typedef TYPE_1__ drmModeModeInfo ;



__attribute__((used)) static double mode_get_Hz(const drmModeModeInfo *mode)
{
    return mode->clock * 1000.0 / mode->htotal / mode->vtotal;
}

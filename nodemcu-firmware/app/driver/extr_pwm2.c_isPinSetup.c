
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_7__ {TYPE_2__ setupData; } ;
typedef TYPE_3__ pwm2_module_data_t ;
struct TYPE_5__ {scalar_t__ pulseResolutions; } ;



__attribute__((used)) static bool isPinSetup(const pwm2_module_data_t *data, const uint8_t pin) {
  return data->setupData.pin[pin].pulseResolutions > 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err_code; } ;
typedef TYPE_1__ spiffs ;
typedef int s32_t ;



s32_t SPIFFS_errno(spiffs *fs) {
  return fs->err_code;
}

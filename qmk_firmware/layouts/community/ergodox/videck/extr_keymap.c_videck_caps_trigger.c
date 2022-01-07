
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int caps_lock_is_on ;

__attribute__((used)) static void videck_caps_trigger (const uint16_t kc) {
  caps_lock_is_on ^= 1;
}

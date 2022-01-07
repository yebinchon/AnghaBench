
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_data; int name; } ;
typedef TYPE_1__ RBinSection ;


 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static void handle_data_sections(RBinSection *sect) {
 if (strstr (sect->name, "_cstring")) {
  sect->is_data = 1;
 } else if (strstr (sect->name, "_os_log")) {
  sect->is_data = 1;
 } else if (strstr (sect->name, "_objc_methname")) {
  sect->is_data = 1;
 } else if (strstr (sect->name, "_objc_classname")) {
  sect->is_data = 1;
 } else if (strstr (sect->name, "_objc_methtype")) {
  sect->is_data = 1;
 }
}

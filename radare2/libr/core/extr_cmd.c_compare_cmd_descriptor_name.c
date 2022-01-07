
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; } ;
typedef TYPE_1__ RCmdDescriptor ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_cmd_descriptor_name(const void *a, const void *b) {
 return strcmp (((RCmdDescriptor *)a)->cmd, ((RCmdDescriptor *)b)->cmd);
}

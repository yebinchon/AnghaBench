
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ st64 ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool adjust_offset(RFlagItem *flag, void *user) {
 st64 base = *(st64 *)user;
 flag->offset += base;
 return 1;
}

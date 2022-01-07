
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_2__ DsoJsonObj ;



__attribute__((used)) static int get_type (DsoJsonObj *y) {
 return (y && y->info)? y->info->type: -1;
}

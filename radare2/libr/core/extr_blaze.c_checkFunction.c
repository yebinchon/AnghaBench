
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ends; scalar_t__ size; } ;
typedef TYPE_1__ fcn_t ;



__attribute__((used)) static bool checkFunction(fcn_t *fcn) {
 if (fcn && fcn->ends > 0 && fcn->size > 0) {
  return 1;
 }

 return 0;
}

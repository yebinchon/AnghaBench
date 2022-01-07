
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bbs; } ;
typedef TYPE_1__ fcn_t ;


 int free (TYPE_1__*) ;
 int r_list_free (int ) ;

__attribute__((used)) static void fcnFree (fcn_t *fcn) {
 r_list_free (fcn->bbs);
 free (fcn);
}

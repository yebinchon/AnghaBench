
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RModal ;


 int free (int *) ;

void __free_modal(RModal **modal) {
 free (*modal);
 *modal = ((void*)0);
}

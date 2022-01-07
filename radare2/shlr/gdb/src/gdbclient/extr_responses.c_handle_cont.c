
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 int handle_stop_reason (int *) ;

int handle_cont(libgdbr_t *g) {
 return handle_stop_reason (g);
}

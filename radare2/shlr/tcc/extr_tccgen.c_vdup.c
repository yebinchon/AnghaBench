
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vpushv (int ) ;
 int vtop ;

__attribute__((used)) static void vdup(void) {
 vpushv (vtop);
}

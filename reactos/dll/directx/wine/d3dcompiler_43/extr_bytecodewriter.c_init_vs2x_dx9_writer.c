
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_writer {int * funcs; } ;


 int TRACE (char*) ;
 int vs_2_x_backend ;

__attribute__((used)) static void init_vs2x_dx9_writer(struct bc_writer *writer) {
    TRACE("Creating DirectX9 vertex shader 2.x writer\n");
    writer->funcs = &vs_2_x_backend;
}

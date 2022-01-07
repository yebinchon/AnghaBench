
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_writer {int * funcs; } ;


 int TRACE (char*) ;
 int ps_1_0123_backend ;

__attribute__((used)) static void init_ps11_dx9_writer(struct bc_writer *writer) {
    TRACE("Creating DirectX9 pixel shader 1.1 writer\n");
    writer->funcs = &ps_1_0123_backend;
}

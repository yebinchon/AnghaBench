
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int d3d11_load ;
 int d3d11_once ;
 int mp_fatal (struct mp_log*,char*,char*,char*) ;
 scalar_t__ pCreateDXGIFactory1 ;
 scalar_t__ pD3D11CreateDevice ;
 int pthread_once (int *,int ) ;

__attribute__((used)) static bool load_d3d11_functions(struct mp_log *log)
{
    pthread_once(&d3d11_once, d3d11_load);
    if (!pD3D11CreateDevice || !pCreateDXGIFactory1) {
        mp_fatal(log, "Failed to load base d3d11 functionality: "
                      "CreateDevice: %s, CreateDXGIFactory1: %s\n",
                 pD3D11CreateDevice ? "success" : "failure",
                 pCreateDXGIFactory1 ? "success": "failure");
        return 0;
    }

    return 1;
}

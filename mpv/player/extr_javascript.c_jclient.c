
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mpv_handle ;
typedef int js_State ;
struct TYPE_2__ {int * client; } ;


 TYPE_1__* jctx (int *) ;

__attribute__((used)) static mpv_handle *jclient(js_State *J)
{
    return jctx(J)->client;
}

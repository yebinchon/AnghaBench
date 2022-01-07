
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int * member_2; int member_1; int const* member_0; } ;
typedef TYPE_1__ PE ;
typedef int DWORD ;


 int dotnet_parse_com (TYPE_1__*,int ) ;

void dotnet_parse(const ut8 *buf, int size, ut64 baddr) {
 PE pe = { buf, (DWORD)size, ((void*)0)};
 dotnet_parse_com (&pe, baddr);
}

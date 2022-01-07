
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidpf ;
struct TYPE_2__ {int persistent; } ;
typedef TYPE_1__ php_zlib_filter_data ;


 int pefree (void*,int ) ;

__attribute__((used)) static void php_zlib_free(voidpf opaque, voidpf address)
{
 pefree((void*)address, ((php_zlib_filter_data*)opaque)->persistent);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ voidpf ;
typedef int uInt ;
struct TYPE_2__ {int persistent; } ;
typedef TYPE_1__ php_zlib_filter_data ;


 int safe_pemalloc (int ,int ,int ,int ) ;

__attribute__((used)) static voidpf php_zlib_alloc(voidpf opaque, uInt items, uInt size)
{
 return (voidpf)safe_pemalloc(items, size, 0, ((php_zlib_filter_data*)opaque)->persistent);
}

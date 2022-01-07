
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidpf ;
typedef int uInt ;


 int safe_emalloc (int ,int ,int ) ;

__attribute__((used)) static voidpf php_zlib_alloc(voidpf opaque, uInt items, uInt size)
{
 return (voidpf)safe_emalloc(items, size, 0);
}

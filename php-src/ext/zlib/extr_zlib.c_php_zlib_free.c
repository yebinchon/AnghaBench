
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidpf ;


 int efree (void*) ;

__attribute__((used)) static void php_zlib_free(voidpf opaque, voidpf address)
{
 efree((void*)address);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t halt_offset; } ;
typedef TYPE_1__ phar_archive_data ;



__attribute__((used)) static size_t phar_zend_stream_fsizer(void *handle)
{
 return ((phar_archive_data*)handle)->halt_offset + 32;
}

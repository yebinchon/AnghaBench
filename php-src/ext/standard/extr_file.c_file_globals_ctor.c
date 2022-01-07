
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int def_chunk_size; } ;
typedef TYPE_1__ php_file_globals ;


 int PHP_SOCK_CHUNK_SIZE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void file_globals_ctor(php_file_globals *file_globals_p)
{
 memset(file_globals_p, 0, sizeof(php_file_globals));
 file_globals_p->def_chunk_size = PHP_SOCK_CHUNK_SIZE;
}

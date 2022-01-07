
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_4__ {size_t phar_pos; int * fp; int is_persistent; } ;
typedef TYPE_1__ phar_archive_data ;
struct TYPE_5__ {int * fp; } ;


 TYPE_3__* PHAR_G (int ) ;
 int cached_fp ;

__attribute__((used)) static inline void phar_set_pharfp(phar_archive_data *phar, php_stream *fp)
{
 if (!phar->is_persistent) {
  phar->fp = fp;
  return;
 }

 PHAR_G(cached_fp)[phar->phar_pos].fp = fp;
}

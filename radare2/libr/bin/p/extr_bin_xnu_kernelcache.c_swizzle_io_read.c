
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* desc; } ;
struct TYPE_9__ {int * read; } ;
struct TYPE_8__ {int * original_io_read; } ;
struct TYPE_7__ {TYPE_3__* plugin; } ;
typedef TYPE_2__ RKernelCacheObj ;
typedef TYPE_3__ RIOPlugin ;
typedef TYPE_4__ RIO ;


 int kernelcache_io_read ;

__attribute__((used)) static void swizzle_io_read(RKernelCacheObj *obj, RIO *io) {
 if (!io || !io->desc || !io->desc->plugin) {
  return;
 }

 RIOPlugin *plugin = io->desc->plugin;
 obj->original_io_read = plugin->read;
 plugin->read = &kernelcache_io_read;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
typedef scalar_t__ st64 ;
struct TYPE_9__ {int io; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {scalar_t__ delta; int fd; } ;
typedef TYPE_1__ RIOMap ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RCore ;


 TYPE_2__* r_io_desc_get (int ,int ) ;
 int r_io_fd_size (int ,int ) ;
 TYPE_1__* r_io_map_get (int ,int ) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static bool isValidAddress (RCore *core, ut64 addr) {

 RIOMap* map = r_io_map_get (core->io, addr);
 if (!map) {
  return 0;
 }
 st64 fdsz = (st64)r_io_fd_size (core->io, map->fd);
 if (fdsz > 0 && map->delta > fdsz) {
  return 0;
 }

 RIODesc *desc = r_io_desc_get (core->io, map->fd);
 if (!desc) {
  return 0;
 }

 if (!strncmp (desc->name, "null://", 7)) {
  return 0;
 }
 return 1;
}

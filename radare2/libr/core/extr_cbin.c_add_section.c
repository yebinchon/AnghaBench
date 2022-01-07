
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ paddr; scalar_t__ vsize; int perm; scalar_t__ name; } ;
struct TYPE_9__ {int io; } ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_1__ RIOMap ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RBinSection ;


 int R_PERM_X ;
 scalar_t__ UT64_ADD_OVFCHK (scalar_t__,scalar_t__) ;
 int free (char*) ;
 int io_create_mem_map (int ,TYPE_3__*,scalar_t__) ;
 int r_io_desc_get (int ,int) ;
 TYPE_1__* r_io_map_add_batch (int ,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 char* r_str_newf (char*,scalar_t__) ;
 scalar_t__ strstr (scalar_t__,char*) ;

__attribute__((used)) static void add_section(RCore *core, RBinSection *sec, ut64 addr, int fd) {
 if (!r_io_desc_get (core->io, fd) || UT64_ADD_OVFCHK (sec->size, sec->paddr) ||
     UT64_ADD_OVFCHK (sec->size, addr) || !sec->vsize) {
  return;
 }

 ut64 size = sec->vsize;


 if (sec->vsize > sec->size) {
  if (!io_create_mem_map (core->io, sec, addr + sec->size)) {
   return;
  }

  size = sec->size;
 }


 char *map_name = r_str_newf ("fmap.%s", sec->name);
 if (!map_name) {
  return;
 }

 int perm = sec->perm;

 if (sec->name && strstr (sec->name, "text")) {
  perm |= R_PERM_X;
 }

 RIOMap *map = r_io_map_add_batch (core->io, fd, perm, sec->paddr, addr, size);
 if (!map) {
  free (map_name);
  return;
 }
 map->name = map_name;
 return;
}

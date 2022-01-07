
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_9__ {scalar_t__ word_size; int db; TYPE_3__* _selrefs; TYPE_2__* core; TYPE_1__* _const; } ;
struct TYPE_8__ {scalar_t__ vsize; scalar_t__ vaddr; } ;
struct TYPE_7__ {int io; } ;
struct TYPE_6__ {scalar_t__ vsize; scalar_t__ vaddr; } ;
typedef TYPE_4__ RCoreObjc ;


 int addr_key (scalar_t__) ;
 int * calloc (int,scalar_t__) ;
 int free (int *) ;
 int r_io_read_at (int ,scalar_t__,int *,scalar_t__) ;
 scalar_t__ r_read_le64 (int *) ;
 int sdb_array_add_num (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static bool objc_build_refs(RCoreObjc *objc) {
 ut64 off;
 if (!objc->_const || !objc->_selrefs) {
  return 0;
 }

 ut8 *buf = calloc (1, objc->_const->vsize);
 if (!buf) {
  return 0;
 }
 (void)r_io_read_at (objc->core->io, objc->_const->vaddr, buf, objc->_const->vsize);
 for (off = 0; off + 8 < objc->_const->vsize; off += objc->word_size) {
  ut64 va = objc->_const->vaddr + off;
  ut64 xrefs_to = r_read_le64 (buf + off);
  if (!xrefs_to) {
   continue;
  }
  sdb_array_add_num (objc->db, addr_key (va), xrefs_to, 0);
 }
 free (buf);

 buf = calloc (1, objc->_selrefs->vsize);
 if (!buf) {
  return 0;
 }
 r_io_read_at (objc->core->io, objc->_selrefs->vaddr, buf, objc->_selrefs->vsize);
 for (off = 0; off + 8 < objc->_selrefs->vsize; off += objc->word_size) {
  ut64 va = objc->_selrefs->vaddr + off;
  ut64 xrefs_to = r_read_le64 (buf + off);
  if (!xrefs_to) {
   continue;
  }
  sdb_array_add_num (objc->db, addr_key (xrefs_to), va, 0);
 }
 free (buf);
 return 1;
}

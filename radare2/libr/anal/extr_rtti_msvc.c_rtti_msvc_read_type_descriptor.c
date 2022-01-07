
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_9__ {scalar_t__ name; int spare; int vtable_addr; } ;
typedef TYPE_2__ rtti_type_descriptor ;
typedef int buf ;
struct TYPE_8__ {int io; int (* read_at ) (int ,scalar_t__,char*,int) ;} ;
struct TYPE_11__ {TYPE_1__ iob; } ;
struct TYPE_10__ {int word_size; TYPE_4__* anal; int (* read_addr ) (TYPE_4__*,scalar_t__,int *) ;} ;
typedef TYPE_3__ RVTableContext ;


 int NAME_BUF_SIZE ;
 scalar_t__ UT64_MAX ;
 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__,char*,size_t) ;
 int stub1 (TYPE_4__*,scalar_t__,int *) ;
 int stub2 (TYPE_4__*,scalar_t__,int *) ;
 int stub3 (int ,scalar_t__,char*,int) ;
 int stub4 (int ,scalar_t__,char*,int) ;

__attribute__((used)) static bool rtti_msvc_read_type_descriptor(RVTableContext *context, ut64 addr, rtti_type_descriptor *td) {
 if (addr == UT64_MAX) {
  return 0;
 }

 if (!context->read_addr (context->anal, addr, &td->vtable_addr)) {
  return 0;
 }
 if (!context->read_addr (context->anal, addr + context->word_size, &td->spare)) {
  return 0;
 }

 ut64 nameAddr = addr + 2 * context->word_size;
 ut8 buf[NAME_BUF_SIZE];
 ut64 bufOffset = 0;
 size_t nameLen = 0;
 bool endFound = 0;
 bool endInvalid = 0;
 while (1) {
  context->anal->iob.read_at (context->anal->iob.io, nameAddr + bufOffset, buf, sizeof (buf));
  int i;
  for (i=0; i<sizeof (buf); i++) {
   if (buf[i] == '\0') {
    endFound = 1;
    break;
   }
   if (buf[i] == 0xff) {
    endInvalid = 1;
    break;
   }
   nameLen++;
  }
  if (endFound || endInvalid) {
   break;
  }
  bufOffset += sizeof (buf);
 }

 if (endInvalid) {
  return 0;
 }

 td->name = malloc (nameLen + 1);
 if (!td->name) {
  return 0;
 }

 if (bufOffset == 0) {
  memcpy (td->name, buf, nameLen + 1);
 } else {
  context->anal->iob.read_at (context->anal->iob.io, nameAddr,
         (ut8 *)td->name, (int) (nameLen + 1));
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_15__ {int vmi_base_count; TYPE_12__* vmi_bases; scalar_t__ vmi_flags; int name; scalar_t__ name_addr; scalar_t__ vtable_addr; } ;
typedef TYPE_2__ vmi_class_type_info ;
typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int buf ;
typedef int base_class_type_info ;
struct TYPE_14__ {int io; int (* read_at ) (int ,scalar_t__,int *,int) ;} ;
struct TYPE_17__ {TYPE_1__ iob; } ;
struct TYPE_16__ {scalar_t__ word_size; TYPE_4__* anal; int (* read_addr ) (TYPE_4__*,scalar_t__,scalar_t__*) ;} ;
struct TYPE_13__ {scalar_t__ flags; scalar_t__ base_class_addr; } ;
typedef TYPE_3__ RVTableContext ;


 int NAME_BUF_SIZE ;
 scalar_t__ UT64_MAX ;
 TYPE_12__* calloc (int,int) ;
 int eprintf (char*) ;
 int malloc (size_t) ;
 int memcpy (int ,int *,size_t) ;
 int r_str_len_utf8 (char const*) ;
 int stub1 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub2 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub3 (int ,scalar_t__,int *,int) ;
 int stub4 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub5 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub6 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub7 (TYPE_4__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static bool rtti_itanium_read_vmi_class_type_info (RVTableContext *context, ut64 addr, vmi_class_type_info *vmi_cti) {
 ut64 at;
 if (addr == UT64_MAX) {
  return 0;
 }
 if (!context->read_addr (context->anal, addr, &at)) {
  return 0;
 }
 vmi_cti->vtable_addr = at;
 addr += context->word_size;
 if (!context->read_addr (context->anal, addr, &at)) {
  return 0;
 }
 vmi_cti->name_addr = at;
 ut8 buf[NAME_BUF_SIZE];
 if (!context->anal->iob.read_at (context->anal->iob.io, at, buf, sizeof(buf))) {
  return 0;
 }
 size_t name_len = r_str_len_utf8 ((const char *)buf) + 1;
 vmi_cti->name = malloc (name_len);
 if (!vmi_cti->name) {
  return 0;
 }
 memcpy (vmi_cti->name, buf, name_len);
 addr += context->word_size;
 if (!context->read_addr (context->anal, addr, &at)) {
  return 0;
 }
 vmi_cti->vmi_flags = at;
 addr += 0x4;
 if (!context->read_addr (context->anal, addr, &at)) {
  return 0;
 }
 if (at < 1 || at > 0xfffff) {
  eprintf ("Error reading vmi_base_count\n");
  return 0;
 }
 vmi_cti->vmi_base_count = at;
 vmi_cti->vmi_bases = calloc (sizeof (base_class_type_info), vmi_cti->vmi_base_count);
 if (!vmi_cti->vmi_bases) {
  return 0;
 }
 ut64 tmp_addr = addr + 0x4;

 int i;
 for (i = 0; i < vmi_cti->vmi_base_count; i++) {
  if (!context->read_addr (context->anal, tmp_addr, &at)) {
   return 0;
  }
  vmi_cti->vmi_bases[i].base_class_addr = at;
  tmp_addr += context->word_size;
  if (!context->read_addr (context->anal, tmp_addr, &at)) {
   return 0;
  }
  vmi_cti->vmi_bases[i].flags = at;
  tmp_addr += context->word_size;
 }
 return 1;
}

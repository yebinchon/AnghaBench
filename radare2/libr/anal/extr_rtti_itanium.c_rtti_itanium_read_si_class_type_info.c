
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_10__ {scalar_t__ base_class_addr; int name; scalar_t__ name_addr; scalar_t__ vtable_addr; } ;
typedef TYPE_2__ si_class_type_info ;
typedef int buf ;
struct TYPE_9__ {int io; int (* read_at ) (int ,scalar_t__,int *,int) ;} ;
struct TYPE_12__ {TYPE_1__ iob; } ;
struct TYPE_11__ {int word_size; TYPE_4__* anal; int (* read_addr ) (TYPE_4__*,scalar_t__,scalar_t__*) ;} ;
typedef TYPE_3__ RVTableContext ;


 int NAME_BUF_SIZE ;
 scalar_t__ UT64_MAX ;
 int malloc (size_t) ;
 int memcpy (int ,int *,size_t) ;
 int r_str_len_utf8 (char const*) ;
 int stub1 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub2 (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int stub3 (int ,scalar_t__,int *,int) ;
 int stub4 (TYPE_4__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static bool rtti_itanium_read_si_class_type_info (RVTableContext *context, ut64 addr, si_class_type_info *si_cti) {
 ut64 at;
 if (addr == UT64_MAX) {
  return 0;
 }
 if (!context->read_addr (context->anal, addr, &at)) {
  return 0;
 }
 si_cti->vtable_addr = at;
 if (!context->read_addr (context->anal, addr + context->word_size, &at)) {
  return 0;
 }
 si_cti->name_addr = at;
 ut8 buf[NAME_BUF_SIZE];
 if (!context->anal->iob.read_at (context->anal->iob.io, at, buf, sizeof(buf))) {
  return 0;
 }
 size_t name_len = r_str_len_utf8 ((const char *)buf) + 1;
 si_cti->name = malloc (name_len);
 if (!si_cti->name) {
  return 0;
 }
 memcpy (si_cti->name, buf, name_len);
 if (!context->read_addr (context->anal, addr + 2 * context->word_size, &at)) {
  return 0;
 }
 si_cti->base_class_addr = at;
 return 1;
}

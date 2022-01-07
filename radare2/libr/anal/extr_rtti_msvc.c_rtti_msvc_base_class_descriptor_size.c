
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef int ut32 ;
struct TYPE_3__ {scalar_t__ word_size; } ;
typedef TYPE_1__ RVTableContext ;



__attribute__((used)) static ut64 rtti_msvc_base_class_descriptor_size(RVTableContext *context) {
 return context->word_size + 5 * sizeof (ut32);
}

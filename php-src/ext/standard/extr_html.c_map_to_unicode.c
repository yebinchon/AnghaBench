
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** inner; } ;
typedef TYPE_2__ enc_to_uni ;
struct TYPE_4__ {unsigned int* uni_cp; } ;


 size_t ENT_ENC_TO_UNI_STAGE1 (unsigned int) ;
 size_t ENT_ENC_TO_UNI_STAGE2 (unsigned int) ;

__attribute__((used)) static inline void map_to_unicode(unsigned code, const enc_to_uni *table, unsigned *res)
{

 *res = table->inner[ENT_ENC_TO_UNI_STAGE1(code)]->uni_cp[ENT_ENC_TO_UNI_STAGE2(code)];
}

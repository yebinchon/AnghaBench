
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
typedef int bfd_boolean ;


 int AARCH64_OPND_QLF_V_1Q ;
 int AARCH64_OPND_QLF_V_8B ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline bfd_boolean
vector_qualifier_p (enum aarch64_opnd_qualifier qualifier)
{
  return ((qualifier >= AARCH64_OPND_QLF_V_8B
   && qualifier <= AARCH64_OPND_QLF_V_1Q) ? TRUE
   : FALSE);
}

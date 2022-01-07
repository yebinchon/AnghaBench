
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef scalar_t__ aarch64_opnd_qualifier_t ;


 int AARCH64_MAX_OPND_NUM ;
 scalar_t__ const AARCH64_OPND_QLF_NIL ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline bfd_boolean
empty_qualifier_sequence_p (const aarch64_opnd_qualifier_t *qualifiers)
{
  int i;
  for (i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    if (qualifiers[i] != AARCH64_OPND_QLF_NIL)
      return FALSE;
  return TRUE;
}

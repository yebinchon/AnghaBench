
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ aarch64_opnd_qualifier_t ;
typedef scalar_t__ const* aarch64_opnd_qualifier_seq_t ;


 int AARCH64_MAX_QLF_SEQ_NUM ;
 scalar_t__ const AARCH64_OPND_NIL ;
 int assert (int) ;

aarch64_opnd_qualifier_t
aarch64_get_expected_qualifier (const aarch64_opnd_qualifier_seq_t *qseq_list,
    int idx,
    const aarch64_opnd_qualifier_t known_qlf,
    int known_idx)
{
  int i, saved_i;
  if (known_qlf == AARCH64_OPND_NIL)
    {
      assert (qseq_list[0][known_idx] == AARCH64_OPND_NIL);
      return qseq_list[0][idx];
    }

  for (i = 0, saved_i = -1; i < AARCH64_MAX_QLF_SEQ_NUM; ++i)
    {
      if (qseq_list[i][known_idx] == known_qlf)
 {
   if (saved_i != -1)


     return AARCH64_OPND_NIL;
   saved_i = i;
 }
    }

  return qseq_list[saved_i][idx];
}

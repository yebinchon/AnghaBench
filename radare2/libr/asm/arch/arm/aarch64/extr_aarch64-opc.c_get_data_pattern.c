
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum data_pattern { ____Placeholder_data_pattern } data_pattern ;
typedef scalar_t__* aarch64_opnd_qualifier_seq_t ;


 scalar_t__ AARCH64_OPND_QLF_NIL ;
 int DP_UNKNOWN ;
 int DP_VECTOR_3SAME ;
 int DP_VECTOR_ACROSS_LANES ;
 int DP_VECTOR_LONG ;
 int DP_VECTOR_WIDE ;
 scalar_t__ TRUE ;
 scalar_t__ aarch64_get_qualifier_esize (scalar_t__) ;
 scalar_t__ fp_qualifier_p (scalar_t__) ;
 scalar_t__ vector_qualifier_p (scalar_t__) ;

__attribute__((used)) static enum data_pattern
get_data_pattern (const aarch64_opnd_qualifier_seq_t qualifiers)
{
  if (vector_qualifier_p (qualifiers[0]) == TRUE)
    {


      if (qualifiers[0] == qualifiers[1]
   && vector_qualifier_p (qualifiers[2]) == TRUE
   && (aarch64_get_qualifier_esize (qualifiers[0])
       == aarch64_get_qualifier_esize (qualifiers[1]))
   && (aarch64_get_qualifier_esize (qualifiers[0])
       == aarch64_get_qualifier_esize (qualifiers[2])))
 return DP_VECTOR_3SAME;



      if (vector_qualifier_p (qualifiers[1]) == TRUE
   && aarch64_get_qualifier_esize (qualifiers[0]) != 0
   && (aarch64_get_qualifier_esize (qualifiers[0])
       == aarch64_get_qualifier_esize (qualifiers[1]) << 1))
 return DP_VECTOR_LONG;

      if (qualifiers[0] == qualifiers[1]
   && vector_qualifier_p (qualifiers[2]) == TRUE
   && aarch64_get_qualifier_esize (qualifiers[0]) != 0
   && (aarch64_get_qualifier_esize (qualifiers[0])
       == aarch64_get_qualifier_esize (qualifiers[2]) << 1)
   && (aarch64_get_qualifier_esize (qualifiers[0])
       == aarch64_get_qualifier_esize (qualifiers[1])))
 return DP_VECTOR_WIDE;
    }
  else if (fp_qualifier_p (qualifiers[0]) == TRUE)
    {

      if (vector_qualifier_p (qualifiers[1]) == TRUE
   && qualifiers[2] == AARCH64_OPND_QLF_NIL)
 return DP_VECTOR_ACROSS_LANES;
    }

  return DP_UNKNOWN;
}

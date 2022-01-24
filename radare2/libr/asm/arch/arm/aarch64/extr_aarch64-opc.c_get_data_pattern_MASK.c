#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum data_pattern { ____Placeholder_data_pattern } data_pattern ;
typedef  scalar_t__* aarch64_opnd_qualifier_seq_t ;

/* Variables and functions */
 scalar_t__ AARCH64_OPND_QLF_NIL ; 
 int DP_UNKNOWN ; 
 int DP_VECTOR_3SAME ; 
 int DP_VECTOR_ACROSS_LANES ; 
 int DP_VECTOR_LONG ; 
 int DP_VECTOR_WIDE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static enum data_pattern
FUNC3 (const aarch64_opnd_qualifier_seq_t qualifiers)
{
  if (FUNC2 (qualifiers[0]) == TRUE)
    {
      /* e.g. v.4s, v.4s, v.4s
	   or v.4h, v.4h, v.h[3].  */
      if (qualifiers[0] == qualifiers[1]
	  && FUNC2 (qualifiers[2]) == TRUE
	  && (FUNC0 (qualifiers[0])
	      == FUNC0 (qualifiers[1]))
	  && (FUNC0 (qualifiers[0])
	      == FUNC0 (qualifiers[2])))
	return DP_VECTOR_3SAME;
      /* e.g. v.8h, v.8b, v.8b.
           or v.4s, v.4h, v.h[2].
	   or v.8h, v.16b.  */
      if (FUNC2 (qualifiers[1]) == TRUE
	  && FUNC0 (qualifiers[0]) != 0
	  && (FUNC0 (qualifiers[0])
	      == FUNC0 (qualifiers[1]) << 1))
	return DP_VECTOR_LONG;
      /* e.g. v.8h, v.8h, v.8b.  */
      if (qualifiers[0] == qualifiers[1]
	  && FUNC2 (qualifiers[2]) == TRUE
	  && FUNC0 (qualifiers[0]) != 0
	  && (FUNC0 (qualifiers[0])
	      == FUNC0 (qualifiers[2]) << 1)
	  && (FUNC0 (qualifiers[0])
	      == FUNC0 (qualifiers[1])))
	return DP_VECTOR_WIDE;
    }
  else if (FUNC1 (qualifiers[0]) == TRUE)
    {
      /* e.g. SADDLV <V><d>, <Vn>.<T>.  */
      if (FUNC2 (qualifiers[1]) == TRUE
	  && qualifiers[2] == AARCH64_OPND_QLF_NIL)
	return DP_VECTOR_ACROSS_LANES;
    }

  return DP_UNKNOWN;
}
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
struct aarch64_opnd_info {int qualifier; scalar_t__ type; } ;
typedef  int aarch64_opnd_qualifier_t ;

/* Variables and functions */
#define  AARCH64_OPND_QLF_SP 131 
#define  AARCH64_OPND_QLF_W 130 
#define  AARCH64_OPND_QLF_WSP 129 
#define  AARCH64_OPND_QLF_X 128 
 scalar_t__ aarch64_operands ; 
 int /*<<< orphan*/  FUNC0 (struct aarch64_opnd_info const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline int
FUNC2 (const struct aarch64_opnd_info *operand,
			  aarch64_opnd_qualifier_t target)
{
  switch (operand->qualifier)
    {
    case AARCH64_OPND_QLF_W:
      if (target == AARCH64_OPND_QLF_WSP && FUNC0 (operand))
	return 1;
      break;
    case AARCH64_OPND_QLF_X:
      if (target == AARCH64_OPND_QLF_SP && FUNC0 (operand))
	return 1;
      break;
    case AARCH64_OPND_QLF_WSP:
      if (target == AARCH64_OPND_QLF_W
	  && FUNC1 (aarch64_operands + operand->type))
	return 1;
      break;
    case AARCH64_OPND_QLF_SP:
      if (target == AARCH64_OPND_QLF_X
	  && FUNC1 (aarch64_operands + operand->type))
	return 1;
      break;
    default:
      break;
    }

  return 0;
}
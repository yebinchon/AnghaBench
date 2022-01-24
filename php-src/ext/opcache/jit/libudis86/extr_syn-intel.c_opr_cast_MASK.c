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
struct ud_operand {int size; } ;
struct ud {scalar_t__ br_far; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ud*,char*) ; 

__attribute__((used)) static void 
FUNC1(struct ud* u, struct ud_operand* op)
{
  if (u->br_far) {
    FUNC0(u, "far "); 
  }
  switch(op->size) {
  case  8:  FUNC0(u, "byte " ); break;
  case 16:  FUNC0(u, "word " ); break;
  case 32:  FUNC0(u, "dword "); break;
  case 64:  FUNC0(u, "qword "); break;
  case 80:  FUNC0(u, "tword "); break;
  case 128: FUNC0(u, "oword "); break;
  case 256: FUNC0(u, "yword "); break;
  default: break;
  }
}
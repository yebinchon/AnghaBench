#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_bits; unsigned int code_buffer; } ;
typedef  TYPE_1__ stbi__zbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(stbi__zbuf *z)
{
   do {
      FUNC0(z->code_buffer < (1U << z->num_bits));
      z->code_buffer |= (unsigned int) FUNC1(z) << z->num_bits;
      z->num_bits += 8;
   } while (z->num_bits <= 24);
}
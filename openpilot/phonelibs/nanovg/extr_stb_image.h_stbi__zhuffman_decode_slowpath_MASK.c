#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* maxcode; int* firstcode; int* firstsymbol; int* size; int* value; } ;
typedef  TYPE_1__ stbi__zhuffman ;
struct TYPE_6__ {int code_buffer; int num_bits; } ;
typedef  TYPE_2__ stbi__zbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STBI__ZFAST_BITS ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(stbi__zbuf *a, stbi__zhuffman *z)
{
   int b,s,k;
   // not resolved by fast table, so compute it the slow way
   // use jpeg approach, which requires MSbits at top
   k = FUNC1(a->code_buffer, 16);
   for (s=STBI__ZFAST_BITS+1; ; ++s)
      if (k < z->maxcode[s])
         break;
   if (s == 16) return -1; // invalid code!
   // code size is s, so:
   b = (k >> (16-s)) - z->firstcode[s] + z->firstsymbol[s];
   FUNC0(z->size[b] == s);
   a->code_buffer >>= s;
   a->num_bits -= s;
   return z->value[b];
}
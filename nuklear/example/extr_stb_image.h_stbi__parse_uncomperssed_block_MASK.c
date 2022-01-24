#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int stbi_uc ;
struct TYPE_6__ {int num_bits; int code_buffer; scalar_t__ zbuffer; scalar_t__ zbuffer_end; scalar_t__ zout; scalar_t__ zout_end; } ;
typedef  TYPE_1__ stbi__zbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(stbi__zbuf *a)
{
   stbi_uc header[4];
   int len,nlen,k;
   if (a->num_bits & 7)
      FUNC5(a, a->num_bits & 7); // discard
   // drain the bit-packed data into header
   k = 0;
   while (a->num_bits > 0) {
      header[k++] = (stbi_uc) (a->code_buffer & 255); // suppress MSVC run-time check
      a->code_buffer >>= 8;
      a->num_bits -= 8;
   }
   FUNC0(a->num_bits == 0);
   // now fill header the normal way
   while (k < 4)
      header[k++] = FUNC4(a);
   len  = header[1] * 256 + header[0];
   nlen = header[3] * 256 + header[2];
   if (nlen != (len ^ 0xffff)) return FUNC2("zlib corrupt","Corrupt PNG");
   if (a->zbuffer + len > a->zbuffer_end) return FUNC2("read past buffer","Corrupt PNG");
   if (a->zout + len > a->zout_end)
      if (!FUNC3(a, a->zout, len)) return 0;
   FUNC1(a->zout, a->zbuffer, len);
   a->zbuffer += len;
   a->zout += len;
   return 1;
}
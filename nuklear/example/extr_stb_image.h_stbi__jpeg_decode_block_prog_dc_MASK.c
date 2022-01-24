#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ spec_end; int code_bits; scalar_t__ succ_high; int succ_low; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ stbi__jpeg ;
typedef  int /*<<< orphan*/  stbi__huffman ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_8__ {int dc_pred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,char*) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(stbi__jpeg *j, short data[64], stbi__huffman *hdc, int b)
{
   int diff,dc;
   int t;
   if (j->spec_end != 0) return FUNC1("can't merge dc and ac", "Corrupt JPEG");

   if (j->code_bits < 16) FUNC3(j);

   if (j->succ_high == 0) {
      // first scan for DC coefficient, must be first
      FUNC0(data,0,64*sizeof(data[0])); // 0 all the ac values now
      t = FUNC5(j, hdc);
      diff = t ? FUNC2(j, t) : 0;

      dc = j->img_comp[b].dc_pred + diff;
      j->img_comp[b].dc_pred = dc;
      data[0] = (short) (dc << j->succ_low);
   } else {
      // refinement scan for DC coefficient
      if (FUNC4(j))
         data[0] += (short) (1 << j->succ_low);
   }
   return 1;
}
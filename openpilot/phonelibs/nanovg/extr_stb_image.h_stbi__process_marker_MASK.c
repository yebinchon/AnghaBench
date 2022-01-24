#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* stbi_uc ;
struct TYPE_7__ {int restart_interval; int /*<<< orphan*/  s; TYPE_2__* huff_ac; int /*<<< orphan*/ * fast_ac; TYPE_1__* huff_dc; void*** dequant; } ;
typedef  TYPE_3__ stbi__jpeg ;
struct TYPE_6__ {void** values; } ;
struct TYPE_5__ {void** values; } ;

/* Variables and functions */
#define  STBI__MARKER_none 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t* stbi__jpeg_dezigzag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(stbi__jpeg *z, int m)
{
   int L;
   switch (m) {
      case STBI__MARKER_none: // no marker found
         return FUNC2("expected marker","Corrupt JPEG");

      case 0xDD: // DRI - specify restart interval
         if (FUNC3(z->s) != 4) return FUNC2("bad DRI len","Corrupt JPEG");
         z->restart_interval = FUNC3(z->s);
         return 1;

      case 0xDB: // DQT - define quantization table
         L = FUNC3(z->s)-2;
         while (L > 0) {
            int q = FUNC4(z->s);
            int p = q >> 4;
            int t = q & 15,i;
            if (p != 0) return FUNC2("bad DQT type","Corrupt JPEG");
            if (t > 3) return FUNC2("bad DQT table","Corrupt JPEG");
            for (i=0; i < 64; ++i)
               z->dequant[t][stbi__jpeg_dezigzag[i]] = FUNC4(z->s);
            L -= 65;
         }
         return L==0;

      case 0xC4: // DHT - define huffman table
         L = FUNC3(z->s)-2;
         while (L > 0) {
            stbi_uc *v;
            int sizes[16],i,n=0;
            int q = FUNC4(z->s);
            int tc = q >> 4;
            int th = q & 15;
            if (tc > 1 || th > 3) return FUNC2("bad DHT header","Corrupt JPEG");
            for (i=0; i < 16; ++i) {
               sizes[i] = FUNC4(z->s);
               n += sizes[i];
            }
            L -= 17;
            if (tc == 0) {
               if (!FUNC1(z->huff_dc+th, sizes)) return 0;
               v = z->huff_dc[th].values;
            } else {
               if (!FUNC1(z->huff_ac+th, sizes)) return 0;
               v = z->huff_ac[th].values;
            }
            for (i=0; i < n; ++i)
               v[i] = FUNC4(z->s);
            if (tc != 0)
               FUNC0(z->fast_ac[th], z->huff_ac + th);
            L -= n;
         }
         return L==0;
   }
   // check for comment block or APP blocks
   if ((m >= 0xE0 && m <= 0xEF) || m == 0xFE) {
      FUNC5(z->s, FUNC3(z->s)-2);
      return 1;
   }
   return 0;
}
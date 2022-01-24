#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ progressive; int /*<<< orphan*/  s; void* marker; scalar_t__ restart_interval; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ stbi__jpeg ;
struct TYPE_10__ {int /*<<< orphan*/ * raw_coeff; int /*<<< orphan*/ * raw_data; } ;

/* Variables and functions */
 void* STBI__MARKER_none ; 
 int /*<<< orphan*/  STBI__SCAN_load ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(stbi__jpeg *j)
{
   int m;
   for (m = 0; m < 4; m++) {
      j->img_comp[m].raw_data = NULL;
      j->img_comp[m].raw_coeff = NULL;
   }
   j->restart_interval = 0;
   if (!FUNC3(j, STBI__SCAN_load)) return 0;
   m = FUNC6(j);
   while (!FUNC0(m)) {
      if (FUNC1(m)) {
         if (!FUNC10(j)) return 0;
         if (!FUNC8(j)) return 0;
         if (j->marker == STBI__MARKER_none ) {
            // handle 0s at the end of image data from IP Kamera 9060
            while (!FUNC2(j->s)) {
               int x = FUNC5(j->s);
               if (x == 255) {
                  j->marker = FUNC5(j->s);
                  break;
               } else if (x != 0) {
                  return FUNC4("junk before marker", "Corrupt JPEG");
               }
            }
            // if we reach eof without hitting a marker, stbi__get_marker() below will fail and we'll eventually return 0
         }
      } else {
         if (!FUNC9(j, m)) return 0;
      }
      m = FUNC6(j);
   }
   if (j->progressive)
      FUNC7(j);
   return 1;
}
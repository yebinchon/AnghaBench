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
struct TYPE_6__ {int marker; int /*<<< orphan*/  progressive; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stbi__jpeg ;

/* Variables and functions */
 int STBI__MARKER_none ; 
 int STBI__SCAN_type ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(stbi__jpeg *z, int scan)
{
   int m;
   z->marker = STBI__MARKER_none; // initialize cached marker to empty
   m = FUNC5(z);
   if (!FUNC2(m)) return FUNC4("no SOI","Corrupt JPEG");
   if (scan == STBI__SCAN_type) return 1;
   m = FUNC5(z);
   while (!FUNC0(m)) {
      if (!FUNC7(z,m)) return 0;
      m = FUNC5(z);
      while (m == STBI__MARKER_none) {
         // some files have extra padding after their blocks, so ok, we'll scan
         if (FUNC3(z->s)) return FUNC4("no SOF", "Corrupt JPEG");
         m = FUNC5(z);
      }
   }
   z->progressive = FUNC1(m);
   if (!FUNC6(z, scan)) return 0;
   return 1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char stbi_uc ;
struct TYPE_3__ {char flags; char bgindex; char ratio; int transparent; int /*<<< orphan*/  pal; void* h; void* w; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 char* stbi__g_failure_reason ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(stbi__context *s, stbi__gif *g, int *comp, int is_info)
{
   stbi_uc version;
   if (FUNC2(s) != 'G' || FUNC2(s) != 'I' || FUNC2(s) != 'F' || FUNC2(s) != '8')
      return FUNC0("not GIF", "Corrupt GIF");

   version = FUNC2(s);
   if (version != '7' && version != '9')    return FUNC0("not GIF", "Corrupt GIF");
   if (FUNC2(s) != 'a')                return FUNC0("not GIF", "Corrupt GIF");

   stbi__g_failure_reason = "";
   g->w = FUNC1(s);
   g->h = FUNC1(s);
   g->flags = FUNC2(s);
   g->bgindex = FUNC2(s);
   g->ratio = FUNC2(s);
   g->transparent = -1;

   if (comp != 0) *comp = 4;  // can't actually tell whether it's 3 or 4 until we parse the comments

   if (is_info) return 1;

   if (g->flags & 0x80)
      FUNC3(s,g->pal, 2 << (g->flags & 7), -1);

   return 1;
}
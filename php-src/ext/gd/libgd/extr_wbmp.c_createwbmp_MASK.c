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
struct TYPE_4__ {int* bitmap; int width; int height; } ;
typedef  TYPE_1__ Wbmp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ) ; 

Wbmp *
FUNC4 (int width, int height, int color)
{
  int i;

  Wbmp *wbmp;
  if ((wbmp = (Wbmp *) FUNC1 (sizeof (Wbmp))) == NULL)
    return (NULL);

  if (FUNC2(sizeof (int), width)) {
    FUNC0(wbmp);
    return NULL;
  }
  if (FUNC2(sizeof (int) * width, height)) {
    FUNC0(wbmp);
    return NULL;
  }

  if ((wbmp->bitmap = (int *) FUNC3(sizeof(int), width * height, 0)) == NULL)
    {
      FUNC0 (wbmp);
      return (NULL);
    }

  wbmp->width = width;
  wbmp->height = height;

  for (i = 0; i < width * height; wbmp->bitmap[i++] = color);

  return (wbmp);
}
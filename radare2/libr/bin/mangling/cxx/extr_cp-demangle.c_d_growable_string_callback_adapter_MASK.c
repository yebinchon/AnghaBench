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
struct d_growable_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_growable_string*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC1 (const char *s, size_t l, void *opaque)
{
  struct d_growable_string *dgs = (struct d_growable_string*) opaque;

  FUNC0 (dgs, s, l);
}
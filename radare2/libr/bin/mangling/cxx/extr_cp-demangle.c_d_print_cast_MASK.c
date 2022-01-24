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
struct demangle_component {int dummy; } ;
struct d_print_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct d_print_info *dpi, int options,
	      struct demangle_component *dc)
{
  FUNC1 (dpi, options, FUNC0 (dc));
}
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
struct bc_writer {int /*<<< orphan*/ * funcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  vs_3_backend ; 

__attribute__((used)) static void FUNC1(struct bc_writer *writer) {
    FUNC0("Creating DirectX9 vertex shader 3.0 writer\n");
    writer->funcs = &vs_3_backend;
}
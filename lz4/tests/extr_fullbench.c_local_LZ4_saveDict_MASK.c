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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  LZ4_stream ; 

__attribute__((used)) static int FUNC1(const char* in, char* out, int inSize)
{
    (void)in;
    return FUNC0(&LZ4_stream, out, inSize);
}
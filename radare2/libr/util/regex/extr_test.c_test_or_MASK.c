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
typedef  int /*<<< orphan*/  RRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6() {
	RRegex *rx = FUNC5 ("(eax|ebx)", "e");
	FUNC0 ("result (%s) = %d\n", "mov eax", FUNC4("(eax|ebx)", "e", "mov eax"));
	FUNC0 ("result (%s) = %d\n", "mov ebx", FUNC4("(eax|ebx)", "e", "mov ebx"));
	FUNC0 ("result (%s) = %d\n", "mov eax", FUNC4("(eax|ebx)", "e", "mov ecx"));
	FUNC0 ("result (%s) = %d\n", "mov ebx", FUNC4("(eax|ecx)", "e", "mov ebx"));
	FUNC0 ("result (%s) = %d\n", "mov eax", FUNC1(rx, "mov eax"));
	FUNC0 ("result (%s) = %d\n", "mov ebx", FUNC1(rx, "mov ebx"));
	FUNC0 ("result (%s) = %d\n", "mov eax", FUNC2(rx, "mov eax", 0, 0, 1));
	FUNC0 ("result (%s) = %d\n", "mov ebx", FUNC2(rx, "mov ebx", 0, 0, 1));
	FUNC3 (rx);
}
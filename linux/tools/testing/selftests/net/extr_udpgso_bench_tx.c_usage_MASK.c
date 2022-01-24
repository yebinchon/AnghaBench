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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC1(const char *filepath)
{
	FUNC0(1, 0, "Usage: %s [-46acmHPtTuvz] [-C cpu] [-D dst ip] [-l secs] [-M messagenr] [-p port] [-s sendsize] [-S gsosize]",
		    filepath);
}
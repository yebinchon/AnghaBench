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
struct TYPE_3__ {char* (* GetString ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(GL *gl)
{
    const char *renderer = gl->GetString(GL_RENDERER);
    const char *vendor = gl->GetString(GL_VENDOR);
    return !(renderer && vendor) ||
           FUNC0(renderer, "Software Rasterizer") == 0 ||
           FUNC1(renderer, "llvmpipe") ||
           FUNC0(vendor, "Microsoft Corporation") == 0 ||
           FUNC0(renderer, "Mesa X11") == 0 ||
           FUNC0(renderer, "Apple Software Renderer") == 0;
}
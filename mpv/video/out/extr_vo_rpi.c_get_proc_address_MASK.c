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
typedef  int /*<<< orphan*/  GLubyte ;

/* Variables and functions */
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void *FUNC4(const GLubyte *name)
{
    void *p = FUNC3(name);
    // EGL 1.4 (supported by the RPI firmware) does not necessarily return
    // function pointers for core functions.
    if (!p) {
        void *h = FUNC1("/opt/vc/lib/libGLESv2.so", RTLD_LAZY);
        if (h) {
            p = FUNC2(h, name);
            FUNC0(h);
        }
    }
    return p;
}
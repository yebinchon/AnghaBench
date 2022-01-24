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
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ GL_UNSIGNED_IDENTITY_NV ; 
 scalar_t__ GL_UNSIGNED_INVERT_NV ; 

__attribute__((used)) static GLenum FUNC1(GLenum mapping) {
    if (mapping == GL_UNSIGNED_INVERT_NV) return GL_UNSIGNED_IDENTITY_NV;
    else if (mapping == GL_UNSIGNED_IDENTITY_NV) return GL_UNSIGNED_INVERT_NV;

    FUNC0("Unhandled mapping %#x\n", mapping);
    return mapping;
}
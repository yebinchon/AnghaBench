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
typedef  int D3D_SHADER_VARIABLE_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_SVC_INTERFACE_CLASS ; 
 int /*<<< orphan*/  D3D_SVC_INTERFACE_POINTER ; 
 int /*<<< orphan*/  D3D_SVC_MATRIX_COLUMNS ; 
 int /*<<< orphan*/  D3D_SVC_MATRIX_ROWS ; 
 int /*<<< orphan*/  D3D_SVC_OBJECT ; 
 int /*<<< orphan*/  D3D_SVC_SCALAR ; 
 int /*<<< orphan*/  D3D_SVC_STRUCT ; 
 int /*<<< orphan*/  D3D_SVC_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(D3D_SHADER_VARIABLE_CLASS c)
{
    switch (c)
    {
        FUNC1(D3D_SVC_SCALAR);
        FUNC1(D3D_SVC_VECTOR);
        FUNC1(D3D_SVC_MATRIX_ROWS);
        FUNC1(D3D_SVC_MATRIX_COLUMNS);
        FUNC1(D3D_SVC_OBJECT);
        FUNC1(D3D_SVC_STRUCT);
        FUNC1(D3D_SVC_INTERFACE_CLASS);
        FUNC1(D3D_SVC_INTERFACE_POINTER);
        default:
            FUNC0("Unrecognized D3D_SHADER_VARIABLE_CLASS %#x.\n", c);
            return "unrecognized";
    }
}
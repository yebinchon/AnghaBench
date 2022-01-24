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
typedef  int /*<<< orphan*/  GLvoid ;
typedef  scalar_t__ GLsizei ;
typedef  int GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GL_COLOR_MATERIAL ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_LESS ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float,int,float,float) ; 

GLvoid FUNC9(GLsizei Width, GLsizei Height)
{
    // Clear The Background Color To Black
    FUNC1(0.0f, 0.0f, 0.0f, 0.0f);

    // Enables Clearing Of The Depth Buffer
    FUNC2(1.0);

    // The Type Of Depth Test To Do
    FUNC3(GL_LESS);

    // Enables Depth Testing
    FUNC4(GL_DEPTH_TEST);

    // Enables Smooth Color Shading
    FUNC7(GL_SMOOTH);

    // Select The Projection Matrix
    FUNC6(GL_PROJECTION);

    // Reset The Projection Matrix
    FUNC5();

    // Calculate The Aspect Ratio Of The Window
    FUNC8(45.0f, (GLfloat)Width / (GLfloat)Height, 0.1f, 100.0f);

    // Select The Modelview Matrix
    FUNC6(GL_MODELVIEW);

    // Build The Font
    FUNC0();

    // Enable Default Light (Quick And Dirty)
    FUNC4(GL_LIGHT0);

    // Enable Lighting
    FUNC4(GL_LIGHTING);

    // Enable Coloring Of Material
    FUNC4(GL_COLOR_MATERIAL);
}
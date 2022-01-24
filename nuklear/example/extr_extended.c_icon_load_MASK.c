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
struct nk_image {int dummy; } ;
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CLAMP_TO_EDGE ; 
 int /*<<< orphan*/  GL_LINEAR_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nk_image FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (char const*,int*,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nk_image
FUNC9(const char *filename)
{
    int x,y,n;
    GLuint tex;
    unsigned char *data = FUNC8(filename, &x, &y, &n, 0);
    if (!data) FUNC0("[SDL]: failed to load image: %s", filename);

    FUNC2(1, &tex);
    FUNC1(GL_TEXTURE_2D, tex);
    FUNC5(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_NEAREST);
    FUNC5(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR_MIPMAP_NEAREST);
    FUNC5(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    FUNC5(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    FUNC4(GL_TEXTURE_2D, 0, GL_RGBA8, x, y, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
    FUNC3(GL_TEXTURE_2D);
    FUNC7(data);
    return FUNC6((int)tex);
}
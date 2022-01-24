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
struct hlsl_type {int dummy; } ;
struct hlsl_scope {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HLSL_CLASS_MATRIX ; 
 int /*<<< orphan*/  HLSL_CLASS_OBJECT ; 
 int /*<<< orphan*/  HLSL_CLASS_SCALAR ; 
 int /*<<< orphan*/  HLSL_CLASS_VECTOR ; 
 unsigned int HLSL_TYPE_FLOAT ; 
 unsigned int HLSL_TYPE_INT ; 
 unsigned int HLSL_TYPE_LAST_SCALAR ; 
 unsigned int HLSL_TYPE_PIXELSHADER ; 
 unsigned int HLSL_TYPE_STRING ; 
 unsigned int HLSL_TYPE_TEXTURE ; 
 unsigned int HLSL_TYPE_VERTEXSHADER ; 
 int /*<<< orphan*/  FUNC0 (struct hlsl_scope*,struct hlsl_type*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hlsl_type* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const* const,...) ; 

__attribute__((used)) static void FUNC4(struct hlsl_scope *scope)
{
    struct hlsl_type *type;
    unsigned int x, y, bt;
    static const char * const names[] =
    {
        "float",
        "half",
        "double",
        "int",
        "uint",
        "bool",
    };
    char name[10];

    for (bt = 0; bt <= HLSL_TYPE_LAST_SCALAR; ++bt)
    {
        for (y = 1; y <= 4; ++y)
        {
            for (x = 1; x <= 4; ++x)
            {
                FUNC3(name, "%s%ux%u", names[bt], x, y);
                type = FUNC2(FUNC1(name), HLSL_CLASS_MATRIX, bt, x, y);
                FUNC0(scope, type);

                if (y == 1)
                {
                    FUNC3(name, "%s%u", names[bt], x);
                    type = FUNC2(FUNC1(name), HLSL_CLASS_VECTOR, bt, x, y);
                    FUNC0(scope, type);

                    if (x == 1)
                    {
                        FUNC3(name, "%s", names[bt]);
                        type = FUNC2(FUNC1(name), HLSL_CLASS_SCALAR, bt, x, y);
                        FUNC0(scope, type);
                    }
                }
            }
        }
    }

    /* DX8 effects predefined types */
    type = FUNC2(FUNC1("DWORD"), HLSL_CLASS_SCALAR, HLSL_TYPE_INT, 1, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("FLOAT"), HLSL_CLASS_SCALAR, HLSL_TYPE_FLOAT, 1, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("VECTOR"), HLSL_CLASS_VECTOR, HLSL_TYPE_FLOAT, 4, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("MATRIX"), HLSL_CLASS_MATRIX, HLSL_TYPE_FLOAT, 4, 4);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("STRING"), HLSL_CLASS_OBJECT, HLSL_TYPE_STRING, 1, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("TEXTURE"), HLSL_CLASS_OBJECT, HLSL_TYPE_TEXTURE, 1, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("PIXELSHADER"), HLSL_CLASS_OBJECT, HLSL_TYPE_PIXELSHADER, 1, 1);
    FUNC0(scope, type);
    type = FUNC2(FUNC1("VERTEXSHADER"), HLSL_CLASS_OBJECT, HLSL_TYPE_VERTEXSHADER, 1, 1);
    FUNC0(scope, type);
}
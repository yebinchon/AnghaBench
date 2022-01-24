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
typedef  enum wined3d_decl_usage { ____Placeholder_wined3d_decl_usage } wined3d_decl_usage ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char const** semantic_names ; 

__attribute__((used)) static const char *FUNC2(enum wined3d_decl_usage usage)
{
    if (usage >= FUNC0(semantic_names))
    {
        FUNC1("Unrecognized usage %#x.\n", usage);
        return "UNRECOGNIZED";
    }

    return semantic_names[usage];
}
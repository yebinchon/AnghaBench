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
struct reg_reservation {int type; int /*<<< orphan*/  regnum; } ;
typedef  enum bwritershader_param_register_type { ____Placeholder_bwritershader_param_register_type } bwritershader_param_register_type ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int BWRITERSPR_CONST ; 
 int BWRITERSPR_CONSTBOOL ; 
 int BWRITERSPR_CONSTINT ; 
 int BWRITERSPR_SAMPLER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct reg_reservation* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reg_reservation *FUNC4(const char *reg_string)
{
    struct reg_reservation *reg_res;
    enum bwritershader_param_register_type type;
    DWORD regnum = 0;

    switch (reg_string[0])
    {
        case 'c':
            type = BWRITERSPR_CONST;
            break;
        case 'i':
            type = BWRITERSPR_CONSTINT;
            break;
        case 'b':
            type = BWRITERSPR_CONSTBOOL;
            break;
        case 's':
            type = BWRITERSPR_SAMPLER;
            break;
        default:
            FUNC1("Unsupported register type.\n");
            return NULL;
     }

    if (!FUNC3(reg_string + 1, "%u", &regnum))
    {
        FUNC1("Unsupported register reservation syntax.\n");
        return NULL;
    }

    reg_res = FUNC2(sizeof(*reg_res));
    if (!reg_res)
    {
        FUNC0("Out of memory.\n");
        return NULL;
    }
    reg_res->type = type;
    reg_res->regnum = regnum;
    return reg_res;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* filename; int flags; char* (* name_converter ) (TYPE_2__*,char const*) ;TYPE_1__* meth; } ;
struct TYPE_6__ {char* (* dso_name_converter ) (TYPE_2__*,char const*) ;} ;
typedef  TYPE_2__ DSO ;

/* Variables and functions */
 int DSO_FLAG_NO_NAME_TRANSLATION ; 
 int /*<<< orphan*/  DSO_F_DSO_CONVERT_FILENAME ; 
 int /*<<< orphan*/  DSO_R_NO_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (TYPE_2__*,char const*) ; 
 char* FUNC3 (TYPE_2__*,char const*) ; 

char *FUNC4(DSO *dso, const char *filename)
{
    char *result = NULL;

    if (dso == NULL) {
        FUNC0(DSO_F_DSO_CONVERT_FILENAME, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    if (filename == NULL)
        filename = dso->filename;
    if (filename == NULL) {
        FUNC0(DSO_F_DSO_CONVERT_FILENAME, DSO_R_NO_FILENAME);
        return NULL;
    }
    if ((dso->flags & DSO_FLAG_NO_NAME_TRANSLATION) == 0) {
        if (dso->name_converter != NULL)
            result = dso->name_converter(dso, filename);
        else if (dso->meth->dso_name_converter != NULL)
            result = dso->meth->dso_name_converter(dso, filename);
    }
    if (result == NULL) {
        result = FUNC1(filename);
        if (result == NULL) {
            FUNC0(DSO_F_DSO_CONVERT_FILENAME, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    }
    return result;
}
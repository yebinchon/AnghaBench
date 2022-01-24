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
struct rrdengine_datafile {int dummy; } ;
typedef  int /*<<< orphan*/  path2 ;
typedef  int /*<<< orphan*/  path1 ;

/* Variables and functions */
 int RRDENG_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct rrdengine_datafile*,char*,int) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b)
{
    struct rrdengine_datafile *file1, *file2;
    char path1[RRDENG_PATH_MAX], path2[RRDENG_PATH_MAX];

    file1 = *(struct rrdengine_datafile **)a;
    file2 = *(struct rrdengine_datafile **)b;
    FUNC0(file1, path1, sizeof(path1));
    FUNC0(file2, path2, sizeof(path2));
    return FUNC1(path1, path2);
}
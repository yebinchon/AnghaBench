#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ num; scalar_t__ array; } ;
struct update_info {TYPE_1__ file_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC3(struct update_info *info,
				   const char *base_path, const char *file)
{
	char *full_path = FUNC1(base_path, file);
	FUNC2(full_path, (char *)info->file_data.array,
				 info->file_data.num - 1, false);
	FUNC0(full_path);
}
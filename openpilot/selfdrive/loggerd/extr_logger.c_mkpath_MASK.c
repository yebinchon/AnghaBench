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

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int FUNC3(char* file_path) {
  FUNC0(file_path && *file_path);
  char* p;
  for (p=FUNC2(file_path+1, '/'); p; p=FUNC2(p+1, '/')) {
    *p = '\0';
    if (FUNC1(file_path, 0777)==-1) {
      if (errno != EEXIST) {
        *p = '/';
        return -1;
      }
    }
    *p = '/';
  }
  return 0;
}
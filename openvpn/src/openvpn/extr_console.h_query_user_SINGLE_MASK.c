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
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static inline bool
FUNC3(char *prompt, size_t prompt_len,
                  char *resp, size_t resp_len,
                  bool echo)
{
    FUNC1();
    FUNC0(prompt, prompt_len, resp, resp_len, echo);
    return FUNC2();
}
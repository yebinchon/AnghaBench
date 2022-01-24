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
struct mp_chmap {int num; } ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct mp_chmap*) ; 
 char* FUNC2 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int,char*,int,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static char *FUNC6(char *buf, size_t buf_sz, int rate,
                                     int format, struct mp_chmap channels)
{
    char ch[128];
    FUNC1(ch, sizeof(ch), &channels);
    char *hr_ch = FUNC2(&channels);
    if (FUNC5(hr_ch, ch) != 0)
        FUNC3(ch, sizeof(ch), " (%s)", hr_ch);
    FUNC4(buf, buf_sz, "%dHz %s %dch %s", rate,
             ch, channels.num, FUNC0(format));
    return buf;
}
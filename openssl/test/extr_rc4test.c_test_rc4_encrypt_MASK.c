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
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ ** data ; 
 scalar_t__* data_len ; 
 int /*<<< orphan*/ ** keys ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * output ; 

__attribute__((used)) static int FUNC4(const int i)
{
    unsigned char obuf[512];
    RC4_KEY key;

    FUNC1(&key, keys[i][0], &(keys[i][1]));
    FUNC3(obuf, 0, sizeof(obuf));
    FUNC0(&key, data_len[i], &(data[i][0]), obuf);
    return FUNC2(obuf, data_len[i] + 1, output[i], data_len[i] + 1);
}
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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  PEM_FLAG_EAY_COMPATIBLE ; 
 int FUNC0 (int /*<<< orphan*/ *,char**,char**,unsigned char**,long*,int /*<<< orphan*/ ) ; 

int FUNC1(BIO *bp, char **name, char **header, unsigned char **data,
                 long *len)
{
    return FUNC0(bp, name, header, data, len, PEM_FLAG_EAY_COMPATIBLE);
}
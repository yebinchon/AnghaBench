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
 int /*<<< orphan*/  STANDARD_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(BIO *bio, const char *in, int inl)
{
    return FUNC0(bio, in, inl, -1, STANDARD_PACKET);
}
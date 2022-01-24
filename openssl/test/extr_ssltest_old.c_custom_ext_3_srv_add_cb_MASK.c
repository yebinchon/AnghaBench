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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ custom_ext_srv_string ; 
 size_t FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(SSL *s, unsigned int ext_type,
                                   const unsigned char **out,
                                   size_t *outlen, int *al, void *arg)
{
    *out = (const unsigned char *)custom_ext_srv_string;
    *outlen = FUNC0(custom_ext_srv_string);
    return 1;                   /* Send "defg" */
}
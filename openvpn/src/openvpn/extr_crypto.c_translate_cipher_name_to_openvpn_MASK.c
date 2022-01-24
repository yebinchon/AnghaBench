#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* openvpn_name; } ;
typedef  TYPE_1__ cipher_name_pair ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 

const char *
FUNC1(const char *cipher_name)
{
    const cipher_name_pair *pair = FUNC0(cipher_name);

    if (NULL == pair)
    {
        return cipher_name;
    }

    return pair->openvpn_name;
}
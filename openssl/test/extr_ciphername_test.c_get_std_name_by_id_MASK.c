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
struct TYPE_3__ {int id; char const* name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cipher_names ; 

__attribute__((used)) static const char *FUNC1(int id)
{
    size_t i;

    for (i = 0; i < FUNC0(cipher_names); i++)
        if (cipher_names[i].id == id)
            return cipher_names[i].name;

    return NULL;
}
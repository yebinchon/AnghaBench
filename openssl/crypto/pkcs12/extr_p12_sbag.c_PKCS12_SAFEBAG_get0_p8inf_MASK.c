#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  const* keybag; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ PKCS12_SAFEBAG ;

/* Variables and functions */
 scalar_t__ NID_keyBag ; 
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 

const PKCS8_PRIV_KEY_INFO *FUNC1(const PKCS12_SAFEBAG *bag)
{
    if (FUNC0(bag) != NID_keyBag)
        return NULL;
    return bag->value.keybag;
}
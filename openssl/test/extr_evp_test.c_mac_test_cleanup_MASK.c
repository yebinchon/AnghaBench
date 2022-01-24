#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  salt; int /*<<< orphan*/  custom; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; int /*<<< orphan*/  alg; int /*<<< orphan*/  controls; int /*<<< orphan*/  mac_name; int /*<<< orphan*/  mac; } ;
typedef  TYPE_1__ MAC_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(EVP_TEST *t)
{
    MAC_DATA *mdat = t->data;

    FUNC0(mdat->mac);
    FUNC1(mdat->mac_name);
    FUNC2(mdat->controls, openssl_free);
    FUNC1(mdat->alg);
    FUNC1(mdat->key);
    FUNC1(mdat->iv);
    FUNC1(mdat->custom);
    FUNC1(mdat->salt);
    FUNC1(mdat->input);
    FUNC1(mdat->output);
}
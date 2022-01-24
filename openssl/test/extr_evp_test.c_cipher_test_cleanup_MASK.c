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
struct TYPE_5__ {int /*<<< orphan*/  fetched_cipher; int /*<<< orphan*/  tag; int /*<<< orphan*/ * aad; int /*<<< orphan*/  plaintext; int /*<<< orphan*/  ciphertext; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ CIPHER_DATA ;

/* Variables and functions */
 int AAD_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(EVP_TEST *t)
{
    int i;
    CIPHER_DATA *cdat = t->data;

    FUNC1(cdat->key);
    FUNC1(cdat->iv);
    FUNC1(cdat->ciphertext);
    FUNC1(cdat->plaintext);
    for (i = 0; i < AAD_NUM; i++)
        FUNC1(cdat->aad[i]);
    FUNC1(cdat->tag);
    FUNC0(cdat->fetched_cipher);
}
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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  prov; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *vkdf){
    EVP_KDF *kdf = (EVP_KDF *)vkdf;
    int ref = 0;

    if (kdf != NULL) {
        FUNC0(&kdf->refcnt, &ref, kdf->lock);
        if (ref <= 0) {
            FUNC3(kdf->prov);
            FUNC1(kdf->lock);
            FUNC2(kdf);
        }
    }
}
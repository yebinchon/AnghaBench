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
struct TYPE_5__ {int nid; int devcryptoid; } ;
struct TYPE_4__ {scalar_t__ status; char* driver_name; scalar_t__ accelerated; } ;

/* Variables and functions */
 scalar_t__ DEVCRYPTO_ACCELERATED ; 
 scalar_t__ DEVCRYPTO_NOT_ACCELERATED ; 
 scalar_t__ DEVCRYPTO_STATUS_FAILURE ; 
 scalar_t__ DEVCRYPTO_STATUS_NO_CIOCGSESSION ; 
 char* FUNC0 (int) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 TYPE_2__* cipher_data ; 
 TYPE_1__* cipher_driver_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void)
{
    size_t i;
    const char *name;

    FUNC2 (stderr, "Information about ciphers supported by the /dev/crypto"
             " engine:\n");
#ifndef CIOCGSESSINFO
    FUNC2(stderr, "CIOCGSESSINFO (session info call) unavailable\n");
#endif
    for (i = 0; i < FUNC1(cipher_data); i++) {
        name = FUNC0(cipher_data[i].nid);
        FUNC2 (stderr, "Cipher %s, NID=%d, /dev/crypto info: id=%d, ",
                 name ? name : "unknown", cipher_data[i].nid,
                 cipher_data[i].devcryptoid);
        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION ) {
            FUNC2 (stderr, "CIOCGSESSION (session open call) failed\n");
            continue;
        }
        FUNC2 (stderr, "driver=%s ", cipher_driver_info[i].driver_name ?
                 cipher_driver_info[i].driver_name : "unknown");
        if (cipher_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
            FUNC2(stderr, "(hw accelerated)");
        else if (cipher_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
            FUNC2(stderr, "(software)");
        else
            FUNC2(stderr, "(acceleration status unknown)");
        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
            FUNC2 (stderr, ". Cipher setup failed");
        FUNC2(stderr, "\n");
    }
    FUNC2(stderr, "\n");
}
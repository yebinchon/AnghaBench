#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {char pubexp; } ;
typedef  TYPE_1__ RSAPUBKEY ;
typedef  int /*<<< orphan*/  PUBLICKEYSTRUC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC2(uint8 * rkey, uint8 * exponent, uint32 max_exp_len, uint8 * modulus,
    uint32 max_mod_len)
{
    RSAPUBKEY *desc = (RSAPUBKEY *)(rkey + sizeof(PUBLICKEYSTRUC));
    if (!rkey || !exponent || !max_exp_len || !modulus || !max_mod_len)
    {
        FUNC0("rdssl_rkey_get_exp_mod %p %p %ld %p %ld\n", rkey, exponent, max_exp_len, modulus, max_mod_len);
        return -1;
    }
    FUNC1 (exponent, &desc->pubexp, max_exp_len);
    FUNC1 (modulus, rkey + sizeof(PUBLICKEYSTRUC) + sizeof(RSAPUBKEY), max_mod_len);
    return 0;
}
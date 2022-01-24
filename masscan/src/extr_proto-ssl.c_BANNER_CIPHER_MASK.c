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
struct BannerOutput {int dummy; } ;
typedef  int /*<<< orphan*/  foo ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_LEN ; 
 int /*<<< orphan*/  PROTO_SSL3 ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct BannerOutput *banout, unsigned cipher_suite)
{
    //const char *notes = "";
    char foo[64];
    FUNC1(foo, sizeof(foo), "cipher:0x%x", cipher_suite);
    FUNC0(banout, PROTO_SSL3, foo, AUTO_LEN);
    
    /*switch (cipher_suite) {
     case 0x0005: notes = "(_/RSA/RC4/SHA)"; break;
     case 0x0035: notes = "(_/RSA/AES-CBC/SHA)"; break;
     case 0x002f: notes = "(_/RSA/AES-CBC/SHA)"; break;
     case 0xc013: notes = "(ECDHE/RSA/AES-CBC/SHA)"; break;
     }
     banout_append(banout, PROTO_SSL3, notes, AUTO_LEN);*/
    
}
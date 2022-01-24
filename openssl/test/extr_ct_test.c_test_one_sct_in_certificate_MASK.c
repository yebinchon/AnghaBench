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
struct TYPE_2__ {char* certificate_file; char* issuer_file; int expected_sct_count; char* sct_text_file; void* sct_dir; void* certs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* certs_dir ; 
 TYPE_1__* fixture ; 
 int result ; 

__attribute__((used)) static int FUNC2(void)
{
    FUNC1();
    if (fixture == NULL)
        return 0;
    fixture->certs_dir = certs_dir;
    fixture->certificate_file = "embeddedSCTs1.pem";
    fixture->issuer_file = "embeddedSCTs1_issuer.pem";
    fixture->expected_sct_count = 1;
    fixture->sct_dir = certs_dir;
    fixture->sct_text_file = "embeddedSCTs1.sct";
    FUNC0();
    return result;
}
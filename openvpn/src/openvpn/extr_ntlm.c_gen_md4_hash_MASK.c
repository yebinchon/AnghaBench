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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  md_kt_t ;

/* Variables and functions */
 int MD4_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(const uint8_t *data, int data_len, uint8_t *result)
{
    /* result is 16 byte md4 hash */
    const md_kt_t *md4_kt = FUNC1("MD4");
    uint8_t md[MD4_DIGEST_LENGTH];

    FUNC0(md4_kt, data, data_len, md);
    FUNC2(result, md, MD4_DIGEST_LENGTH);
}
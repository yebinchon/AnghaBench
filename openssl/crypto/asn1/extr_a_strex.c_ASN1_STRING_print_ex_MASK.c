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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  send_bio_chars ; 

int FUNC1(BIO *out, const ASN1_STRING *str, unsigned long flags)
{
    return FUNC0(send_bio_chars, out, flags, str);
}
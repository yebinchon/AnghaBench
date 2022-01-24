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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_TFLG_NDEF ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char**,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC1(const ASN1_VALUE *val, unsigned char **out,
                       const ASN1_ITEM *it)
{
    return FUNC0(val, out, it, ASN1_TFLG_NDEF);
}
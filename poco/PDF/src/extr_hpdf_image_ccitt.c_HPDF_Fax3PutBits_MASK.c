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
struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_3__ {unsigned int bit; int data; } ;
typedef  TYPE_1__ HPDF_Fax3CodecState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct _HPDF_CCITT_Data*) ; 
 int /*<<< orphan*/  FUNC1 (struct _HPDF_CCITT_Data*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct _HPDF_CCITT_Data *pData, unsigned int bits, unsigned int length)
{
	HPDF_Fax3CodecState* sp = FUNC0(pData);
	unsigned int bit = sp->bit;
	int data = sp->data;

	FUNC1(pData, bits, length);

	sp->data = data;
	sp->bit = bit;
}
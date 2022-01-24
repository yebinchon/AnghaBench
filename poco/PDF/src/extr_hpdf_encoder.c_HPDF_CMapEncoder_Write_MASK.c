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
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Encoder ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC1  (HPDF_Encoder  encoder,
                         HPDF_Stream   out)
{
    HPDF_STATUS ret = HPDF_OK;
    FUNC0 (out);
    FUNC0 (encoder);

    return ret;
}
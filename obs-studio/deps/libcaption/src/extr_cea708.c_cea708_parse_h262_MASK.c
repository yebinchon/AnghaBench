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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
struct TYPE_3__ {int user_identifier; int user_data_type_code; int /*<<< orphan*/  user_data; } ;
typedef  TYPE_1__ cea708_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIBCAPTION_ERROR ; 
 int /*<<< orphan*/  LIBCAPTION_OK ; 
 int /*<<< orphan*/  FUNC0 (int const*,size_t,int /*<<< orphan*/ *) ; 

libcaption_stauts_t FUNC1(const uint8_t* data, size_t size, cea708_t* cea708)
{
    if (!data || 7 > size) {
        return LIBCAPTION_ERROR;
    }

    cea708->user_identifier = ((data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3]);
    cea708->user_data_type_code = data[4];
    if (3 == cea708->user_data_type_code) {
        FUNC0(data + 5, size - 5, &cea708->user_data);
    }

    return LIBCAPTION_OK;
}
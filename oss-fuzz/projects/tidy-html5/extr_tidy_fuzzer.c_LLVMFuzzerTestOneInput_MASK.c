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
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  TidyBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const uint8_t *data, size_t size) {
    TidyBuffer data_buffer;
    TidyBuffer output_buffer;
    TidyBuffer error_buffer;
    FUNC4(&data_buffer);
    FUNC4(&output_buffer);
    FUNC4(&error_buffer);

    FUNC1(&data_buffer, (byte*)data, size);
    FUNC0(&data_buffer, &output_buffer, &error_buffer);

    FUNC3(&error_buffer);
    FUNC3(&output_buffer);
    FUNC2(&data_buffer);
    return 0;
}
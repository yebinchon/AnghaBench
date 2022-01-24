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
typedef  int /*<<< orphan*/ * backend_response_checker_t ;
typedef  int /*<<< orphan*/ * backend_request_formatter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BACKEND_SOURCE_DATA_AS_COLLECTED ; 
 int /*<<< orphan*/  format_dimension_collected_json_plaintext ; 
 int /*<<< orphan*/  format_dimension_stored_json_plaintext ; 
 int /*<<< orphan*/  global_backend_options ; 
 int /*<<< orphan*/  process_json_response ; 

void FUNC1(int *default_port,
                                backend_response_checker_t brc,
                                backend_request_formatter_t brf)
{
    *default_port = 5448;
    *brc = process_json_response;

    if (FUNC0(global_backend_options) == BACKEND_SOURCE_DATA_AS_COLLECTED)
        *brf = format_dimension_collected_json_plaintext;
    else
        *brf = format_dimension_stored_json_plaintext;
}
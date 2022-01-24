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
struct web_buffer {int dummy; } ;

/* Variables and functions */
 size_t MAX_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (struct web_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct web_buffer*,char const*) ; 
 char** http_headers ; 

__attribute__((used)) static void FUNC2(struct web_buffer *wb, const char *url, bool use_cr, size_t num_headers)
{
    FUNC0(wb);
    FUNC1(wb, "GET ");
    FUNC1(wb, url);
    FUNC1(wb, " HTTP/1.1");
    if (use_cr)
        FUNC1(wb, "\r");
    FUNC1(wb, "\n");
    for (size_t i = 0; i < num_headers && i < MAX_HEADERS; i++) {
        FUNC1(wb, http_headers[i]);
        if (use_cr)
            FUNC1(wb, "\r");
        FUNC1(wb, "\n");
    }
    if (use_cr)
        FUNC1(wb, "\r");
    FUNC1(wb, "\n");
}
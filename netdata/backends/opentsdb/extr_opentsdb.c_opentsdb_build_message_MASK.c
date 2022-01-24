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
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,char*) ; 

__attribute__((used)) static inline void FUNC1(BUFFER *b, char *message, const char *hostname, int length) {
    FUNC0(
            b
            , "POST /api/put HTTP/1.1\r\n"
              "Host: %s\r\n"
              "Content-Type: application/json\r\n"
              "Content-Length: %d\r\n"
              "\r\n"
              "%s"
            , hostname
            , length
            , message
    );
}
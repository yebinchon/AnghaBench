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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FETCH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  char buf[FETCH_BUF_SIZE];

  FUNC3(buf, "%s", "GET /data/range.txt HTTP/1.0\n\n");
  FUNC2(buf, "HTTP/1.1 200 OK");
  FUNC0(FUNC5(buf, "Content-Length: 312\r\n") != 0);

  /* Fetch a piece from the middle of the file */
  FUNC3(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=5-10\n\n");
  FUNC2(buf, "HTTP/1.1 206 Partial Content");
  FUNC0(FUNC5(buf, "Content-Length: 6\r\n") != 0);
  FUNC0(FUNC5(buf, "Content-Range: bytes 5-10/312\r\n") != 0);
  FUNC1(buf + FUNC4(buf) - 8, "\r\n of co");

  /* Fetch till EOF */
  FUNC3(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=300-\n\n");
  FUNC2(buf, "HTTP/1.1 206 Partial Content");
  FUNC0(FUNC5(buf, "Content-Length: 12\r\n") != 0);
  FUNC0(FUNC5(buf, "Content-Range: bytes 300-311/312\r\n") != 0);
  FUNC1(buf + FUNC4(buf) - 14, "\r\nis disease.\n");

  /* Fetch past EOF, must trigger 416 response */
  FUNC3(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=1000-\n\n");
  FUNC2(buf, "HTTP/1.1 416");
  FUNC0(FUNC5(buf, "Content-Length: 0\r\n") != 0);
  FUNC0(FUNC5(buf, "Content-Range: bytes */312\r\n") != 0);

  /* Request range past EOF, must trigger 416 response */
  FUNC3(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=0-312\n\n");
  FUNC2(buf, "HTTP/1.1 416");

  return NULL;
}
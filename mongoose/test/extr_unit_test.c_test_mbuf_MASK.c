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
struct mbuf {size_t len; size_t size; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 size_t MBUF_SIZE_MULTIPLIER ; 
 size_t FUNC3 (struct mbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int) ; 
 size_t FUNC6 (struct mbuf*,size_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mbuf io;
  const char *data = "TEST";
  const char *prefix = "MY";
  const char *big_prefix = "Some long prefix: ";
  size_t old_size;

  FUNC5(&io, 0);
  FUNC0(io.buf == NULL);
  FUNC1(io.len, 0);
  FUNC1(io.size, 0);
  FUNC4(&io);
  FUNC0(io.buf == NULL);
  FUNC1(io.len, 0);
  FUNC1(io.size, 0);

  FUNC5(&io, 10);
  FUNC0(io.buf != NULL);
  FUNC1(io.len, 0);
  FUNC1(io.size, 10);
  FUNC4(&io);
  FUNC0(io.buf == NULL);
  FUNC1(io.len, 0);
  FUNC1(io.size, 0);

  FUNC5(&io, 10);
  FUNC1(FUNC3(&io, NULL, 0), 0);
  /* test allocation failure */
  FUNC1(FUNC3(&io, NULL, 1125899906842624), 0);

  FUNC1(FUNC3(&io, data, FUNC8(data)), FUNC8(data));

  FUNC7(&io, 2);
  FUNC1(io.size, 10);
  FUNC1(io.len, FUNC8(data));

  FUNC1(FUNC6(&io, 0, prefix, FUNC8(prefix)), FUNC8(prefix));
  FUNC1(io.size, 10);
  FUNC1(io.len, FUNC8(data) + FUNC8(prefix));

  FUNC1(FUNC6(&io, 0, big_prefix, FUNC8(big_prefix)),
            FUNC8(big_prefix));
  FUNC1(io.size, MBUF_SIZE_MULTIPLIER *
                         (FUNC8(big_prefix) + FUNC8(prefix) + FUNC8(data)));
  FUNC2(io.buf, "Some long prefix: MYTEST");

  old_size = io.size;
  FUNC1(FUNC6(&io, FUNC8(big_prefix), data, FUNC8(data)),
            FUNC8(data));
  FUNC1(io.size, old_size);
  FUNC2(io.buf, "Some long prefix: TESTMYTEST");

  /* test allocation failure */
  FUNC1(FUNC6(&io, 0, NULL, 1125899906842624), 0);

  /* test overflow */
  FUNC1(FUNC6(&io, 0, NULL, -1), 0);
  FUNC4(&io);
  return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cab_UBYTE ;
struct TYPE_5__ {int /*<<< orphan*/  (* seek ) (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ;int /*<<< orphan*/ * (* alloc ) (size_t) ;} ;
typedef  int /*<<< orphan*/  INT_PTR ;
typedef  TYPE_1__ FDI_Int ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ TRUE ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC10(FDI_Int *fdi, INT_PTR hf, long cabsize)
{
  size_t len=256,
         base = FUNC1(fdi, hf),
         maxlen = cabsize - base;
  BOOL ok = FALSE;
  unsigned int i;
  cab_UBYTE *buf = NULL;

  FUNC2("(fdi == %p, hf == %ld, cabsize == %ld)\n", fdi, hf, cabsize);

  do {
    if (len > maxlen) len = maxlen;
    if (!(buf = fdi->alloc(len))) break;
    if (!fdi->read(hf, buf, len)) break;

    /* search for a null terminator in what we've just read */
    for (i=0; i < len; i++) {
      if (!buf[i]) {ok=TRUE; break;}
    }

    if (!ok) {
      if (len == maxlen) {
        FUNC0("cabinet is truncated\n");
        break;
      }
      /* The buffer is too small for the string. Reset the file to the point
       * where we started, free the buffer and increase the size for the next try
       */
      fdi->seek(hf, base, SEEK_SET);
      fdi->free(buf);
      buf = NULL;
      len *= 2;
    }
  } while (!ok);

  if (!ok) {
    if (buf)
      fdi->free(buf);
    else
      FUNC0("out of memory!\n");
    return NULL;
  }

  /* otherwise, set the stream to just after the string and return */
  fdi->seek(hf, base + FUNC3((char *)buf) + 1, SEEK_SET);

  return (char *) buf;
}
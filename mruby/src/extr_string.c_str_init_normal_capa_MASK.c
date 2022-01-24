#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* capa; } ;
struct TYPE_6__ {char* ptr; TYPE_1__ aux; void* len; } ;
struct TYPE_5__ {TYPE_3__ heap; } ;
struct RString {TYPE_2__ as; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RString*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct RString*
FUNC3(mrb_state *mrb, struct RString *s,
                     const char *p, size_t len, size_t capa)
{
  char *dst = (char *)FUNC2(mrb, capa + 1);
  if (p) FUNC1(dst, p, len);
  dst[len] = '\0';
  s->as.heap.ptr = dst;
  s->as.heap.len = (mrb_int)len;
  s->as.heap.aux.capa = (mrb_int)capa;
  FUNC0(s);
  return s;
}
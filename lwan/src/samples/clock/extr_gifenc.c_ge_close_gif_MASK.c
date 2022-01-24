#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lwan_strbuf {int dummy; } ;
struct TYPE_4__ {struct lwan_strbuf* buf; } ;
typedef  TYPE_1__ ge_GIF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_strbuf*,char) ; 

struct lwan_strbuf *FUNC2(ge_GIF *gif)
{
    struct lwan_strbuf *buf = gif->buf;

    FUNC1(gif->buf, ';');
    FUNC0(gif);

    return buf;
}
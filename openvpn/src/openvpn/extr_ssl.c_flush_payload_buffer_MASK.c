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
struct key_state {int /*<<< orphan*/  paybuf; int /*<<< orphan*/  ks_ssl; } ;
struct buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct key_state *ks)
{
    struct buffer *b;

    while ((b = FUNC0(ks->paybuf)))
    {
        FUNC2(&ks->ks_ssl, b->data, b->len);
        FUNC1(ks->paybuf);
    }
}
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
struct trace_data_st {size_t (* callback ) (char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  category; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 struct trace_data_st* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_TRACE_CTRL_WRITE ; 
 size_t FUNC1 (char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(BIO *channel,
                       const char *buf, size_t num, size_t *written)
{
    struct trace_data_st *ctx = FUNC0(channel);
    size_t cnt = ctx->callback(buf, num, ctx->category, OSSL_TRACE_CTRL_WRITE,
                               ctx->data);

    *written = cnt;
    return cnt != 0;
}
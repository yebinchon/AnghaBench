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
struct TYPE_5__ {size_t (* record_padding_cb ) (TYPE_1__*,int,size_t,void*) ;} ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */

void FUNC0(SSL *ssl,
                                     size_t (*cb) (SSL *ssl, int type,
                                                   size_t len, void *arg))
{
    ssl->record_padding_cb = cb;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* conn; } ;
typedef  TYPE_2__ lwIP_sock ;
typedef  size_t err_t ;
struct TYPE_9__ {int mss; } ;
struct TYPE_7__ {TYPE_3__* tcp; } ;

/* Variables and functions */
 size_t ERR_MEM ; 
 size_t ERR_OK ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 size_t FUNC2 (TYPE_3__*) ; 
 size_t FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (TYPE_3__*,void const*,size_t,int) ; 

int FUNC5(int s, const void *data, size_t size, int flags)
{
    lwIP_sock *sock = NULL;
    size_t bytes_used = 0;
    err_t Err = ERR_OK;

	FUNC1(data);
    sock = FUNC0(s);
    if (!sock)
    {
        return -1;
    }

    if (FUNC3(sock->conn->tcp) < size)
    {
        bytes_used = FUNC3(sock->conn->tcp);
    } else{
		bytes_used = size;
	}

    if (bytes_used > 2 * sock->conn->tcp->mss)
    {
        bytes_used = 2 * sock->conn->tcp->mss;
    }

    do
    {
        Err = FUNC4(sock->conn->tcp, data, bytes_used, 1);
        if (Err == ERR_MEM)
            size /= 2;
    }
    while (Err == ERR_MEM && size > 1);

    if (Err == ERR_OK)
    {
        Err = FUNC2(sock->conn->tcp);
    } else{
		size = Err;
	}

    return size;
}
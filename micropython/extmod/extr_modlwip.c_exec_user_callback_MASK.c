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
struct TYPE_4__ {scalar_t__ callback; } ;
typedef  TYPE_1__ lwip_socket_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(lwip_socket_obj_t *socket) {
    if (socket->callback != MP_OBJ_NULL) {
        // Schedule the user callback to execute outside the lwIP context
        FUNC1(socket->callback, FUNC0(socket));
    }
}
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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int err_t ;

/* Variables and functions */
#define  ERR_ABRT 143 
#define  ERR_ARG 142 
#define  ERR_BUF 141 
#define  ERR_CLSD 140 
#define  ERR_CONN 139 
#define  ERR_IF 138 
#define  ERR_INPROGRESS 137 
#define  ERR_ISCONN 136 
#define  ERR_MEM 135 
#define  ERR_OK 134 
#define  ERR_RST 133 
#define  ERR_RTE 132 
#define  ERR_TIMEOUT 131 
#define  ERR_USE 130 
#define  ERR_VAL 129 
#define  ERR_WOULDBLOCK 128 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 

int FUNC1 (lua_State *L, err_t err) {
  switch (err) {
    case ERR_OK: return 0;
    case ERR_MEM: return FUNC0(L, "out of memory");
    case ERR_BUF: return FUNC0(L, "buffer error");
    case ERR_TIMEOUT: return FUNC0(L, "timeout");
    case ERR_RTE: return FUNC0(L, "routing problem");
    case ERR_INPROGRESS: return FUNC0(L, "in progress");
    case ERR_VAL: return FUNC0(L, "illegal value");
    case ERR_WOULDBLOCK: return FUNC0(L, "would block");
    case ERR_ABRT: return FUNC0(L, "connection aborted");
    case ERR_RST: return FUNC0(L, "connection reset");
    case ERR_CLSD: return FUNC0(L, "connection closed");
    case ERR_CONN: return FUNC0(L, "not connected");
    case ERR_ARG: return FUNC0(L, "illegal argument");
    case ERR_USE: return FUNC0(L, "address in use");
    case ERR_IF: return FUNC0(L, "netif error");
    case ERR_ISCONN: return FUNC0(L, "already connected");
    default: return FUNC0(L, "unknown error");
  }
}
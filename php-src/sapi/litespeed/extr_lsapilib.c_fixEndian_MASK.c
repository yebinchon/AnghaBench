#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lsapi_req_header {int /*<<< orphan*/  m_cntSpecialEnv; int /*<<< orphan*/  m_cntEnv; int /*<<< orphan*/  m_cntUnknownHeaders; int /*<<< orphan*/  m_requestMethodOff; int /*<<< orphan*/  m_queryStringOff; int /*<<< orphan*/  m_scriptNameOff; int /*<<< orphan*/  m_scriptFileOff; int /*<<< orphan*/  m_reqBodyLen; int /*<<< orphan*/  m_httpHeaderLen; } ;
struct TYPE_3__ {struct lsapi_req_header* m_pHeader; } ;
typedef  TYPE_1__ LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1( LSAPI_Request * pReq )
{
    struct lsapi_req_header *p= pReq->m_pHeader;
    FUNC0( &p->m_httpHeaderLen );
    FUNC0( &p->m_reqBodyLen );
    FUNC0( &p->m_scriptFileOff );
    FUNC0( &p->m_scriptNameOff );
    FUNC0( &p->m_queryStringOff );
    FUNC0( &p->m_requestMethodOff );
    FUNC0( &p->m_cntUnknownHeaders );
    FUNC0( &p->m_cntEnv );
    FUNC0( &p->m_cntSpecialEnv );
}
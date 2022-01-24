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
struct TYPE_4__ {scalar_t__ len; scalar_t__ buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC2(strbuf_t *buf, const WCHAR *str, DWORD len)
{
    if(!len)
        return S_OK;

    if(!FUNC1(buf, buf->len+len))
        return E_OUTOFMEMORY;

    FUNC0(buf->buf+buf->len, str, len*sizeof(WCHAR));
    buf->len += len;
    return S_OK;
}
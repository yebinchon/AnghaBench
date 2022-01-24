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
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IMimeMessage ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC5(IStream *stream, IMimeMessage **ret)
{
    IMimeMessage *mime_message;
    HRESULT hres;

    hres = FUNC4(NULL, (void**)&mime_message);
    if(FUNC0(hres))
        return hres;

    FUNC1(mime_message);

    hres = FUNC2(mime_message, stream);
    if(FUNC0(hres)) {
        FUNC3(mime_message);
        return hres;
    }

    *ret = mime_message;
    return S_OK;
}
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
typedef  int /*<<< orphan*/  IMultiLanguage ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CMultiLanguage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IMultiLanguage ; 

__attribute__((used)) static inline HRESULT FUNC1(IMultiLanguage **ml)
{
    return FUNC0(&CLSID_CMultiLanguage, NULL,  CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER,
                            &IID_IMultiLanguage, (void **)ml);
}
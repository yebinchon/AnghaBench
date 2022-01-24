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
typedef  int /*<<< orphan*/  IFileDialogEvents ;
typedef  int /*<<< orphan*/  IFileDialogControlEvents ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IFileDialogControlEvents ; 

__attribute__((used)) static inline HRESULT FUNC1(IFileDialogEvents *pfde, IFileDialogControlEvents **pfdce)
{
    return FUNC0(pfde, &IID_IFileDialogControlEvents, (void**)pfdce);
}
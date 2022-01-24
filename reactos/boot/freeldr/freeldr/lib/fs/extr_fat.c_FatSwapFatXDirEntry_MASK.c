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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PFATX_DIRENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  CreateDate ; 
 int /*<<< orphan*/  CreateTime ; 
 int /*<<< orphan*/  Date ; 
 int /*<<< orphan*/  LastAccessDate ; 
 int /*<<< orphan*/  LastAccessTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Size ; 
 int /*<<< orphan*/  StartCluster ; 
 int /*<<< orphan*/  Time ; 

VOID FUNC2(PFATX_DIRENTRY Obj)
{
    FUNC0(Obj, StartCluster);
    FUNC0(Obj, Size);
    FUNC1(Obj, Time);
    FUNC1(Obj, Date);
    FUNC1(Obj, CreateTime);
    FUNC1(Obj, CreateDate);
    FUNC1(Obj, LastAccessTime);
    FUNC1(Obj, LastAccessDate);
}
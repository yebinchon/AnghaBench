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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_ANY ; 
 int /*<<< orphan*/  CLASS_IN ; 
 int /*<<< orphan*/  ClassAny ; 
 int /*<<< orphan*/  ClassIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

USHORT FUNC2( PCHAR ClassName )
{
    if( !FUNC1( ClassName, ClassIN, FUNC0( ClassIN ) ) ) return CLASS_IN;
    if( !FUNC1( ClassName, ClassAny, FUNC0( ClassAny ) ) ) return CLASS_ANY;

    return 0;
}
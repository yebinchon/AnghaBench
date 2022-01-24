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
 int /*<<< orphan*/  TYPE_A ; 
 int /*<<< orphan*/  TYPE_ANY ; 
 int /*<<< orphan*/  TYPE_CNAME ; 
 int /*<<< orphan*/  TYPE_MX ; 
 int /*<<< orphan*/  TYPE_NS ; 
 int /*<<< orphan*/  TYPE_PTR ; 
 int /*<<< orphan*/  TYPE_SOA ; 
 int /*<<< orphan*/  TYPE_WKS ; 
 int /*<<< orphan*/  TypeA ; 
 int /*<<< orphan*/  TypeAny ; 
 int /*<<< orphan*/  TypeCNAME ; 
 int /*<<< orphan*/  TypeMX ; 
 int /*<<< orphan*/  TypeNS ; 
 int /*<<< orphan*/  TypePTR ; 
 int /*<<< orphan*/  TypeSOA ; 
 int /*<<< orphan*/  TypeSRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

USHORT FUNC2( PCHAR TypeName )
{
    if( !FUNC1( TypeName, TypeA, FUNC0( TypeA ) ) ) return TYPE_A;
    if( !FUNC1( TypeName, TypeNS, FUNC0( TypeNS ) ) ) return TYPE_NS;
    if( !FUNC1( TypeName, TypeCNAME, FUNC0( TypeCNAME ) ) ) return TYPE_CNAME;
    if( !FUNC1( TypeName, TypeSOA, FUNC0( TypeSOA ) ) ) return TYPE_SOA;
    if( !FUNC1( TypeName, TypeSRV, FUNC0( TypeSRV ) ) ) return TYPE_WKS;
    if( !FUNC1( TypeName, TypePTR, FUNC0( TypePTR ) ) ) return TYPE_PTR;
    if( !FUNC1( TypeName, TypeMX, FUNC0( TypeMX ) ) ) return TYPE_MX;
    if( !FUNC1( TypeName, TypeAny, FUNC0( TypeAny ) ) ) return TYPE_ANY;

    return 0;
}
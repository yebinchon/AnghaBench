#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;
struct TYPE_11__ {scalar_t__ line; scalar_t__ offset; scalar_t__* preContext; scalar_t__* postContext; } ;
typedef  TYPE_2__ UParseError ;
typedef  int /*<<< orphan*/  UErrorCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

smart_str FUNC8( UParseError* pe )
{
	smart_str    ret = {0};
	zend_string *u8str;
	UErrorCode   status;
	int          any = 0;

	FUNC0( pe != NULL );

	FUNC5( &ret, "parse error " );
	if( pe->line > 0 )
	{
		FUNC5( &ret, "on line " );
		FUNC4( &ret, (zend_long ) pe->line );
		any = 1;
	}
	if( pe->offset >= 0 ) {
		if( any )
			FUNC5( &ret, ", " );
		else
			FUNC5( &ret, "at " );

		FUNC5( &ret, "offset " );
		FUNC4( &ret, (zend_long ) pe->offset );
		any = 1;
	}

	if (pe->preContext[0] != 0 ) {
		if( any )
			FUNC5( &ret, ", " );

		FUNC5( &ret, "after \"" );
		u8str = FUNC1(pe->preContext, -1, &status );
		if( !u8str )
		{
			FUNC5( &ret, "(could not convert parser error pre-context to UTF-8)" );
		}
		else {
			FUNC3( &ret, u8str );
			FUNC7( u8str, 0 );
		}
		FUNC5( &ret, "\"" );
		any = 1;
	}

	if( pe->postContext[0] != 0 )
	{
		if( any )
			FUNC5( &ret, ", " );

		FUNC5( &ret, "before or at \"" );
		u8str = FUNC1(pe->postContext, -1, &status );
		if( !u8str )
		{
			FUNC5( &ret, "(could not convert parser error post-context to UTF-8)" );
		}
		else
		{
			FUNC3( &ret, u8str );
			FUNC7( u8str, 0 );
		}
		FUNC5( &ret, "\"" );
		any = 1;
	}

	if( !any )
	{
		FUNC6( &ret );
		FUNC5( &ret, "no parse error" );
	}

	FUNC2( &ret );
	return ret;
}
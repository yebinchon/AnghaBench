#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int port; int type; int Class; int root; int domain; int* srchlist; scalar_t__ ixfrver; int /*<<< orphan*/  MSxfr; scalar_t__ retry; scalar_t__ timeout; int /*<<< orphan*/  ignoretc; int /*<<< orphan*/  vc; int /*<<< orphan*/  d2; int /*<<< orphan*/  recurse; int /*<<< orphan*/  search; int /*<<< orphan*/  defname; int /*<<< orphan*/  debug; } ;

/* Variables and functions */
 TYPE_1__ State ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 

void FUNC2()
{
    FUNC1( FUNC0("Default Server:  (null)\n\n") );
    FUNC1( FUNC0("Set options:\n") );

    FUNC1( FUNC0("  ") );
    if( !State.debug ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("debug\n") );

    FUNC1( FUNC0("  ") );
    if( !State.defname ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("defname\n") );

    FUNC1( FUNC0("  ") );
    if( !State.search ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("search\n") );

    FUNC1( FUNC0("  ") );
    if( !State.recurse ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("recurse\n") );

    FUNC1( FUNC0("  ") );
    if( !State.d2 ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("d2\n") );

    FUNC1( FUNC0("  ") );
    if( !State.vc ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("vc\n") );

    FUNC1( FUNC0("  ") );
    if( !State.ignoretc ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("ignoretc\n") );

    FUNC1( FUNC0("  port=%d\n"), State.port );
    FUNC1( FUNC0("  type=%s\n"), State.type );
    FUNC1( FUNC0("  class=%s\n"), State.Class );
    FUNC1( FUNC0("  timeout=%d\n"), (int)State.timeout );
    FUNC1( FUNC0("  retry=%d\n"), (int)State.retry );
    FUNC1( FUNC0("  root=%s\n"), State.root );
    FUNC1( FUNC0("  domain=%s\n"), State.domain );

    FUNC1( FUNC0("  ") );
    if( !State.MSxfr ) FUNC1( FUNC0("no") );
    FUNC1( FUNC0("MSxfr\n") );

    FUNC1( FUNC0("  IXFRversion=%d\n"), (int)State.ixfrver );

    FUNC1( FUNC0("  srchlist=%s\n\n"), State.srchlist[0] );
}
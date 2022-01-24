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
struct TYPE_3__ {int Mode; int /*<<< orphan*/  Offset; int /*<<< orphan*/  Segment; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ ADDRESS64 ;

/* Variables and functions */
#define  AddrMode1616 131 
#define  AddrMode1632 130 
#define  AddrModeFlat 129 
#define  AddrModeReal 128 
 char const* FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char* FUNC2(const ADDRESS64* addr)
{
    if (!addr) return "(null)";
    switch (addr->Mode)
    {
    case AddrModeFlat:
        return FUNC0("flat<%s>", FUNC1(addr->Offset));
    case AddrMode1616:
        return FUNC0("1616<%04x:%04x>", addr->Segment, (DWORD)addr->Offset);
    case AddrMode1632:
        return FUNC0("1632<%04x:%08x>", addr->Segment, (DWORD)addr->Offset);
    case AddrModeReal:
        return FUNC0("real<%04x:%04x>", addr->Segment, (DWORD)addr->Offset);
    default:
        return "unknown";
    }
}
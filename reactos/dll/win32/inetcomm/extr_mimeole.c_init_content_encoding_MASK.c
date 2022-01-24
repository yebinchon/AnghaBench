#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* pszVal; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_9__ {TYPE_2__ value; } ;
typedef  TYPE_3__ header_t ;
struct TYPE_10__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_4__ MimeBody ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IET_7BIT ; 
 int /*<<< orphan*/  IET_8BIT ; 
 int /*<<< orphan*/  IET_BASE64 ; 
 int /*<<< orphan*/  IET_QP ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(MimeBody *body, header_t *header)
{
    const char *encoding = header->value.u.pszVal;

    if(!FUNC1(encoding, "base64", -1))
        body->encoding = IET_BASE64;
    else if(!FUNC1(encoding, "quoted-printable", -1))
        body->encoding = IET_QP;
    else if(!FUNC1(encoding, "7bit", -1))
        body->encoding = IET_7BIT;
    else if(!FUNC1(encoding, "8bit", -1))
        body->encoding = IET_8BIT;
    else
        FUNC0("unknown encoding %s\n", FUNC2(encoding));
}
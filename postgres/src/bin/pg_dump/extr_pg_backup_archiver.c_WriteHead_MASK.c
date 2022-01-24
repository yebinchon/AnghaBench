#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct tm {int /*<<< orphan*/  tm_isdst; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct TYPE_13__ {int /*<<< orphan*/  remoteVersionStr; } ;
struct TYPE_14__ {TYPE_1__ public; int /*<<< orphan*/  connection; int /*<<< orphan*/  createDate; int /*<<< orphan*/  compression; int /*<<< orphan*/  format; int /*<<< orphan*/  (* WriteBytePtr ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  offSize; int /*<<< orphan*/  intSize; int /*<<< orphan*/  version; int /*<<< orphan*/  (* WriteBufPtr ) (TYPE_2__*,char*,int) ;} ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC14(ArchiveHandle *AH)
{
	struct tm	crtm;

	AH->WriteBufPtr(AH, "PGDMP", 5);	/* Magic code */
	AH->WriteBytePtr(AH, FUNC0(AH->version));
	AH->WriteBytePtr(AH, FUNC1(AH->version));
	AH->WriteBytePtr(AH, FUNC2(AH->version));
	AH->WriteBytePtr(AH, AH->intSize);
	AH->WriteBytePtr(AH, AH->offSize);
	AH->WriteBytePtr(AH, AH->format);
	FUNC4(AH, AH->compression);
	crtm = *FUNC6(&AH->createDate);
	FUNC4(AH, crtm.tm_sec);
	FUNC4(AH, crtm.tm_min);
	FUNC4(AH, crtm.tm_hour);
	FUNC4(AH, crtm.tm_mday);
	FUNC4(AH, crtm.tm_mon);
	FUNC4(AH, crtm.tm_year);
	FUNC4(AH, crtm.tm_isdst);
	FUNC5(AH, FUNC3(AH->connection));
	FUNC5(AH, AH->public.remoteVersionStr);
	FUNC5(AH, PG_VERSION);
}
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
typedef  scalar_t__ tidata_t ;
struct _HPDF_CCITT_Data {int tif_rawdatasize; scalar_t__ tif_rawdata; scalar_t__ tif_rawcp; scalar_t__ tif_rawcc; int /*<<< orphan*/  dst; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Encrypt ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  scalar_t__ HPDF_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct _HPDF_CCITT_Data*) ; 
 scalar_t__ FUNC1 (struct _HPDF_CCITT_Data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _HPDF_CCITT_Data*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct _HPDF_CCITT_Data*) ; 
 int /*<<< orphan*/  FUNC4 (struct _HPDF_CCITT_Data*) ; 
 scalar_t__ FUNC5 (struct _HPDF_CCITT_Data*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct _HPDF_CCITT_Data*,int /*<<< orphan*/ ,int) ; 

HPDF_STATUS 
FUNC9( const HPDF_BYTE   *buf,
                            HPDF_Stream  dst,
							HPDF_Encrypt  e,
							HPDF_UINT          width,
							HPDF_UINT          height,
							HPDF_UINT          line_width,
							HPDF_BOOL		   top_is_first)
{
	const HPDF_BYTE   *pBufPos;
	const HPDF_BYTE   *pBufEnd; /* end marker */
	int lineIncrement;
	struct _HPDF_CCITT_Data data;

	FUNC6 (e);

	if(height==0) return 1;
	if(top_is_first) {
		pBufPos = buf;
		pBufEnd=buf+(line_width*height);
		lineIncrement = line_width;
	} else {
		pBufPos = buf+(line_width*(height-1));
		pBufEnd= buf-line_width;
		lineIncrement = -((int)line_width);
	}	

	FUNC8(&data, 0, sizeof(struct _HPDF_CCITT_Data));
	data.dst = dst;
	data.tif_rawdata = (tidata_t) FUNC7( 16384 ); /*  16 kb buffer */
	data.tif_rawdatasize = 16384;
	data.tif_rawcc = 0;
	data.tif_rawcp = data.tif_rawdata;

	if(FUNC5(&data)!=HPDF_OK)
		return 1;

	if(FUNC1(&data, width, height, line_width)!=HPDF_OK)
	{
		FUNC4(&data);
		return 1;
	}

	if(FUNC0(&data)!=HPDF_OK)
	{
		FUNC4(&data);
		return 1;
	}

	/*  encode data */
	while(pBufEnd!=pBufPos)
	{
		FUNC2(&data, (tidata_t)pBufPos, line_width);
		pBufPos+=lineIncrement;
	}

	FUNC3(&data);

	FUNC4(&data);

	return HPDF_OK;
}
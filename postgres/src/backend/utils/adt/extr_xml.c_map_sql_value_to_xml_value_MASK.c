#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xmlTextWriterPtr ;
typedef  int /*<<< orphan*/ * xmlBufferPtr ;
struct pg_tm {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  Timestamp ;
struct TYPE_9__ {int /*<<< orphan*/  err_occurred; } ;
struct TYPE_8__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ PgXmlErrorContext ;
typedef  int Oid ;
typedef  int Datum ;
typedef  scalar_t__ DateADT ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  BOOLOID 132 
#define  BYTEAOID 131 
#define  DATEOID 130 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (struct pg_tm*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pg_tm*,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 char* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  PG_XML_STRICTNESS_ALL ; 
 scalar_t__ POSTGRES_EPOCH_JDATE ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USE_XSD_DATES ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XMLBINARY_BASE64 ; 
 int XMLOID ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char,int**,int**,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (char*) ; 
 int FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC31 (int /*<<< orphan*/ ) ; 
 char* FUNC32 (char const*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int*,struct pg_tm*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/ * FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ * volatile) ; 
 int /*<<< orphan*/ * FUNC39 (int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ * volatile,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlbinary ; 

char *
FUNC43(Datum value, Oid type, bool xml_escape_strings)
{
	if (FUNC34(type))
	{
		ArrayType  *array;
		Oid			elmtype;
		int16		elmlen;
		bool		elmbyval;
		char		elmalign;
		int			num_elems;
		Datum	   *elem_values;
		bool	   *elem_nulls;
		StringInfoData buf;
		int			i;

		array = FUNC2(value);
		elmtype = FUNC0(array);
		FUNC26(elmtype, &elmlen, &elmbyval, &elmalign);

		FUNC18(array, elmtype,
						  elmlen, elmbyval, elmalign,
						  &elem_values, &elem_nulls,
						  &num_elems);

		FUNC27(&buf);

		for (i = 0; i < num_elems; i++)
		{
			if (elem_nulls[i])
				continue;
			FUNC17(&buf, "<element>");
			FUNC17(&buf,
								   FUNC43(elem_values[i],
															  elmtype, true));
			FUNC17(&buf, "</element>");
		}

		FUNC29(elem_values);
		FUNC29(elem_nulls);

		return buf.data;
	}
	else
	{
		Oid			typeOut;
		bool		isvarlena;
		char	   *str;

		/*
		 * Flatten domains; the special-case treatments below should apply to,
		 * eg, domains over boolean not just boolean.
		 */
		type = FUNC24(type);

		/*
		 * Special XSD formatting for some data types
		 */
		switch (type)
		{
			case BOOLOID:
				if (FUNC3(value))
					return "true";
				else
					return "false";

			case DATEOID:
				{
					DateADT		date;
					struct pg_tm tm;
					char		buf[MAXDATELEN + 1];

					date = FUNC5(value);
					/* XSD doesn't support infinite values */
					if (FUNC1(date))
						FUNC19(ERROR,
								(FUNC20(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
								 FUNC22("date out of range"),
								 FUNC21("XML does not support infinite date values.")));
					FUNC28(date + POSTGRES_EPOCH_JDATE,
						   &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
					FUNC7(&tm, USE_XSD_DATES, buf);

					return FUNC32(buf);
				}

			case TIMESTAMPOID:
				{
					Timestamp	timestamp;
					struct pg_tm tm;
					fsec_t		fsec;
					char		buf[MAXDATELEN + 1];

					timestamp = FUNC6(value);

					/* XSD doesn't support infinite values */
					if (FUNC14(timestamp))
						FUNC19(ERROR,
								(FUNC20(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
								 FUNC22("timestamp out of range"),
								 FUNC21("XML does not support infinite timestamp values.")));
					else if (FUNC33(timestamp, NULL, &tm, &fsec, NULL, NULL) == 0)
						FUNC8(&tm, fsec, false, 0, NULL, USE_XSD_DATES, buf);
					else
						FUNC19(ERROR,
								(FUNC20(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
								 FUNC22("timestamp out of range")));

					return FUNC32(buf);
				}

			case TIMESTAMPTZOID:
				{
					TimestampTz timestamp;
					struct pg_tm tm;
					int			tz;
					fsec_t		fsec;
					const char *tzn = NULL;
					char		buf[MAXDATELEN + 1];

					timestamp = FUNC6(value);

					/* XSD doesn't support infinite values */
					if (FUNC14(timestamp))
						FUNC19(ERROR,
								(FUNC20(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
								 FUNC22("timestamp out of range"),
								 FUNC21("XML does not support infinite timestamp values.")));
					else if (FUNC33(timestamp, &tz, &tm, &fsec, &tzn, NULL) == 0)
						FUNC8(&tm, fsec, true, tz, tzn, USE_XSD_DATES, buf);
					else
						FUNC19(ERROR,
								(FUNC20(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
								 FUNC22("timestamp out of range")));

					return FUNC32(buf);
				}

#ifdef USE_LIBXML
			case BYTEAOID:
				{
					bytea	   *bstr = DatumGetByteaPP(value);
					PgXmlErrorContext *xmlerrcxt;
					volatile xmlBufferPtr buf = NULL;
					volatile xmlTextWriterPtr writer = NULL;
					char	   *result;

					xmlerrcxt = pg_xml_init(PG_XML_STRICTNESS_ALL);

					PG_TRY();
					{
						buf = xmlBufferCreate();
						if (buf == NULL || xmlerrcxt->err_occurred)
							xml_ereport(xmlerrcxt, ERROR, ERRCODE_OUT_OF_MEMORY,
										"could not allocate xmlBuffer");
						writer = xmlNewTextWriterMemory(buf, 0);
						if (writer == NULL || xmlerrcxt->err_occurred)
							xml_ereport(xmlerrcxt, ERROR, ERRCODE_OUT_OF_MEMORY,
										"could not allocate xmlTextWriter");

						if (xmlbinary == XMLBINARY_BASE64)
							xmlTextWriterWriteBase64(writer, VARDATA_ANY(bstr),
													 0, VARSIZE_ANY_EXHDR(bstr));
						else
							xmlTextWriterWriteBinHex(writer, VARDATA_ANY(bstr),
													 0, VARSIZE_ANY_EXHDR(bstr));

						/* we MUST do this now to flush data out to the buffer */
						xmlFreeTextWriter(writer);
						writer = NULL;

						result = pstrdup((const char *) xmlBufferContent(buf));
					}
					PG_CATCH();
					{
						if (writer)
							xmlFreeTextWriter(writer);
						if (buf)
							xmlBufferFree(buf);

						pg_xml_done(xmlerrcxt, true);

						PG_RE_THROW();
					}
					PG_END_TRY();

					xmlBufferFree(buf);

					pg_xml_done(xmlerrcxt, false);

					return result;
				}
#endif							/* USE_LIBXML */

		}

		/*
		 * otherwise, just use the type's native text representation
		 */
		FUNC25(type, &typeOut, &isvarlena);
		str = FUNC9(typeOut, value);

		/* ... exactly as-is for XML, and when escaping is not wanted */
		if (type == XMLOID || !xml_escape_strings)
			return str;

		/* otherwise, translate special characters as needed */
		return FUNC23(str);
	}
}
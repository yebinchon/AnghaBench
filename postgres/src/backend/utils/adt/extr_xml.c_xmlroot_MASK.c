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
typedef  int /*<<< orphan*/  xmltype ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t VARHDRSZ ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
#define  XML_STANDALONE_NO 131 
#define  XML_STANDALONE_NO_VALUE 130 
#define  XML_STANDALONE_OMITTED 129 
#define  XML_STANDALONE_YES 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

xmltype *
FUNC9(xmltype *data, text *version, int standalone)
{
#ifdef USE_LIBXML
	char	   *str;
	size_t		len;
	xmlChar    *orig_version;
	int			orig_standalone;
	StringInfoData buf;

	len = VARSIZE(data) - VARHDRSZ;
	str = text_to_cstring((text *) data);

	parse_xml_decl((xmlChar *) str, &len, &orig_version, NULL, &orig_standalone);

	if (version)
		orig_version = xml_text2xmlChar(version);
	else
		orig_version = NULL;

	switch (standalone)
	{
		case XML_STANDALONE_YES:
			orig_standalone = 1;
			break;
		case XML_STANDALONE_NO:
			orig_standalone = 0;
			break;
		case XML_STANDALONE_NO_VALUE:
			orig_standalone = -1;
			break;
		case XML_STANDALONE_OMITTED:
			/* leave original value */
			break;
	}

	initStringInfo(&buf);
	print_xml_decl(&buf, orig_version, 0, orig_standalone);
	appendStringInfoString(&buf, str + len);

	return stringinfo_to_xmltype(&buf);
#else
	FUNC0();
	return NULL;
#endif
}
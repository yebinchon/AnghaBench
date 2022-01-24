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
struct hdrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HDRSIZE ; 
 char* ascii1 ; 
 char* ascii2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct hdrinfo* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (unsigned char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,struct hdrinfo*,unsigned char*,long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (char*,long*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

int FUNC12(int argc, char *argv[])
{
	unsigned char hdr[HDRSIZE];
	unsigned char *data;
	FILE *of;
	char *outfile = NULL;
	char *type;
	struct hdrinfo *info;
	long size;
	int last = 0;
	int n;
	for (n = 1; n < argc; n++)
	{
		if (FUNC10(argv[n], "-1") == 0)
			ascii1 = argv[n+1];
		if (FUNC10(argv[n], "-2") == 0)
			ascii2 = argv[n+1];
		if (FUNC10(argv[n], "-o") == 0)
			outfile = argv[n+1];
		if (FUNC10(argv[n], "-ids") == 0)
			FUNC8();
	}
	if (ascii1 == NULL || ascii2 == NULL || outfile == NULL)
		FUNC9();
	of = FUNC2(outfile, "w");
	if (of == NULL)
		FUNC6(of);
	for (n = 1; n < argc; n++)
	{
		if (FUNC11(argv[n], "-", 1) != 0)
		{
			type = argv[n++];
			if (n >= argc)
				FUNC9();
			last = ((n + 1) >= argc);		/* dirty, options first! */
			info = FUNC1(type);
			if (info == NULL)
				FUNC9();
			data = FUNC7(argv[n], &size);
			if (data == NULL)
				FUNC9();
			FUNC5(hdr, info, data, size, last);
			/* showhdr(hdr); */
			if (FUNC4(hdr, HDRSIZE, 1, of) != 1)
				FUNC6(of);
			if (FUNC4(data, size, 1, of) != 1)
				FUNC6(of);
			FUNC3(data);
		}
		else
			n++;
	}
	if (FUNC0(of) != 0)
		FUNC6(NULL);
	return 0;
}
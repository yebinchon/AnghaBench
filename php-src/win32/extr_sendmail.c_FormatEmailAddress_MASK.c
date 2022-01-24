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

/* Variables and functions */
 int /*<<< orphan*/  MAIL_BUFFER_SIZE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static int FUNC2(char* Buf, char* EmailAddress, char* FormatString) {
	char *tmpAddress1, *tmpAddress2;
	int result;

	if( (tmpAddress1 = FUNC1(EmailAddress, '<')) && (tmpAddress2 = FUNC1(tmpAddress1, '>'))  ) {
		*tmpAddress2 = 0; // terminate the string temporarily.
		result = FUNC0(Buf, MAIL_BUFFER_SIZE, FormatString , tmpAddress1+1);
		*tmpAddress2 = '>'; // put it back the way it was.
		return result;
	}
	return FUNC0(Buf, MAIL_BUFFER_SIZE , FormatString , EmailAddress );
}
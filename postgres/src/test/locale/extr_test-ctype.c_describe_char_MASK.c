void
FUNC0(int c)
{
	unsigned char cp = c,
				up = toupper(c),
				lo = tolower(c);

	if (!isprint(cp))
		cp = ' ';
	if (!FUNC0(up))
		up = ' ';
	if (!FUNC0(lo))
		lo = ' ';

	printf("chr#%-4d%2c%6d%6d%6d%6d%6d%6d%6d%6d%6d%6d%6d%4c%4c\n", c, cp, FUNC0(isalnum(c)), FUNC0(isalpha(c)), FUNC0(iscntrl(c)), FUNC0(isdigit(c)), FUNC0(islower(c)), FUNC0(isgraph(c)), FUNC0(FUNC0(c)), FUNC0(ispunct(c)), FUNC0(isspace(c)), FUNC0(isupper(c)), FUNC0(isxdigit(c)), lo, up);
}
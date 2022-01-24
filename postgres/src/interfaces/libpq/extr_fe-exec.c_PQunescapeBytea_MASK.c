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
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 
 int FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t) ; 
 unsigned char* FUNC6 (unsigned char*,size_t) ; 
 size_t FUNC7 (char const*) ; 

unsigned char *
FUNC8(const unsigned char *strtext, size_t *retbuflen)
{
	size_t		strtextlen,
				buflen;
	unsigned char *buffer,
			   *tmpbuf;
	size_t		i,
				j;

	if (strtext == NULL)
		return NULL;

	strtextlen = FUNC7((const char *) strtext);

	if (strtext[0] == '\\' && strtext[1] == 'x')
	{
		const unsigned char *s;
		unsigned char *p;

		buflen = (strtextlen - 2) / 2;
		/* Avoid unportable malloc(0) */
		buffer = (unsigned char *) FUNC5(buflen > 0 ? buflen : 1);
		if (buffer == NULL)
			return NULL;

		s = strtext + 2;
		p = buffer;
		while (*s)
		{
			char		v1,
						v2;

			/*
			 * Bad input is silently ignored.  Note that this includes
			 * whitespace between hex pairs, which is allowed by byteain.
			 */
			v1 = FUNC4(*s++);
			if (!*s || v1 == (char) -1)
				continue;
			v2 = FUNC4(*s++);
			if (v2 != (char) -1)
				*p++ = (v1 << 4) | v2;
		}

		buflen = p - buffer;
	}
	else
	{
		/*
		 * Length of input is max length of output, but add one to avoid
		 * unportable malloc(0) if input is zero-length.
		 */
		buffer = (unsigned char *) FUNC5(strtextlen + 1);
		if (buffer == NULL)
			return NULL;

		for (i = j = 0; i < strtextlen;)
		{
			switch (strtext[i])
			{
				case '\\':
					i++;
					if (strtext[i] == '\\')
						buffer[j++] = strtext[i++];
					else
					{
						if ((FUNC0(strtext[i])) &&
							(FUNC1(strtext[i + 1])) &&
							(FUNC1(strtext[i + 2])))
						{
							int			byte;

							byte = FUNC2(strtext[i++]);
							byte = (byte << 3) + FUNC2(strtext[i++]);
							byte = (byte << 3) + FUNC2(strtext[i++]);
							buffer[j++] = byte;
						}
					}

					/*
					 * Note: if we see '\' followed by something that isn't a
					 * recognized escape sequence, we loop around having done
					 * nothing except advance i.  Therefore the something will
					 * be emitted as ordinary data on the next cycle. Corner
					 * case: '\' at end of string will just be discarded.
					 */
					break;

				default:
					buffer[j++] = strtext[i++];
					break;
			}
		}
		buflen = j;				/* buflen is the length of the dequoted data */
	}

	/* Shrink the buffer to be no larger than necessary */
	/* +1 avoids unportable behavior when buflen==0 */
	tmpbuf = FUNC6(buffer, buflen + 1);

	/* It would only be a very brain-dead realloc that could fail, but... */
	if (!tmpbuf)
	{
		FUNC3(buffer);
		return NULL;
	}

	*retbuflen = buflen;
	return tmpbuf;
}
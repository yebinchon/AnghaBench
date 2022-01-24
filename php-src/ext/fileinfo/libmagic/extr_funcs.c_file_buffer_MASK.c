#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_stat_t ;
struct magic_set {int flags; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  st_mode; } ;
struct buffer {TYPE_1__ st; } ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int php_socket_t ;
typedef  int /*<<< orphan*/  file_pushbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  BINTEST ; 
 int MAGIC_DEBUG ; 
 int MAGIC_MIME_ENCODING ; 
 int MAGIC_MIME_TYPE ; 
 int MAGIC_NO_CHECK_APPTYPE ; 
 int MAGIC_NO_CHECK_CDF ; 
 int MAGIC_NO_CHECK_COMPRESS ; 
 int MAGIC_NO_CHECK_ELF ; 
 int MAGIC_NO_CHECK_ENCODING ; 
 int MAGIC_NO_CHECK_JSON ; 
 int MAGIC_NO_CHECK_SOFT ; 
 int MAGIC_NO_CHECK_TAR ; 
 int MAGIC_NO_CHECK_TEXT ; 
 int /*<<< orphan*/  PHP_STREAM_AS_FD ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int,int /*<<< orphan*/ *,void const*,size_t) ; 
 scalar_t__ FUNC2 (struct magic_set*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct magic_set*,struct buffer*,int) ; 
 int FUNC5 (struct magic_set*,size_t) ; 
 int FUNC6 (struct magic_set*,struct buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,char const**,char const**) ; 
 int FUNC7 (struct magic_set*,struct buffer*) ; 
 int FUNC8 (struct magic_set*,struct buffer*) ; 
 int FUNC9 (struct magic_set*,char const*,struct buffer*) ; 
 char* FUNC10 (struct magic_set*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct magic_set*,char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (struct magic_set*) ; 
 int FUNC13 (struct magic_set*,struct buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct magic_set*,struct buffer*) ; 
 int FUNC15 (struct magic_set*,struct buffer*) ; 
 int FUNC16 (struct magic_set*,struct buffer*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC20(struct magic_set *ms, php_stream *stream, zend_stat_t *st,
    const char *inname,
    const void *buf, size_t nb)
{
	int m = 0, rv = 0, looks_text = 0;
	const char *code = NULL;
	const char *code_mime = "binary";
	const char *def = "data";
	const char *ftype = NULL;
	char *rbuf = NULL;
	struct buffer b;
	int fd = -1;

	if (stream) {
#ifdef _WIN64
		php_socket_t _fd = fd;
#else
		int _fd;
#endif
		int _ret = FUNC19(stream, PHP_STREAM_AS_FD, (void **)&_fd, 0);
		if (SUCCESS == _ret) {
			fd = (int)_fd;
		}
	}

	FUNC1(&b, fd, st, buf, nb);
	ms->mode = b.st.st_mode;

	if (nb == 0) {
		def = "empty";
		goto simple;
	} else if (nb == 1) {
		def = "very short file (no magic)";
		goto simple;
	}

	if ((ms->flags & MAGIC_NO_CHECK_ENCODING) == 0) {
		looks_text = FUNC6(ms, &b, NULL, 0,
		    &code, &code_mime, &ftype);
	}

#ifdef __EMX__
	if ((ms->flags & MAGIC_NO_CHECK_APPTYPE) == 0 && inname) {
		m = file_os2_apptype(ms, inname, &b);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)fprintf(stderr, "[try os2_apptype %d]\n", m);
		switch (m) {
		case -1:
			return -1;
		case 0:
			break;
		default:
			return 1;
		}
	}
#endif

#if PHP_FILEINFO_UNCOMPRESS
	if ((ms->flags & MAGIC_NO_CHECK_COMPRESS) == 0) {
		m = file_zmagic(ms, &b, inname);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)fprintf(stderr, "[try zmagic %d]\n", m);
		if (m) {
			goto done_encoding;
		}
	}
#endif
	/* Check if we have a tar file */
	if ((ms->flags & MAGIC_NO_CHECK_TAR) == 0) {
		m = FUNC8(ms, &b);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)FUNC17(stderr, "[try tar %d]\n", m);
		if (m) {
			if (FUNC2(ms, &rv))
				goto done;
		}
	}

	/* Check if we have a JSON file */
	if ((ms->flags & MAGIC_NO_CHECK_JSON) == 0) {
		m = FUNC7(ms, &b);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)FUNC17(stderr, "[try json %d]\n", m);
		if (m) {
			if (FUNC2(ms, &rv))
				goto done;
		}
	}

	/* Check if we have a CDF file */
	if ((ms->flags & MAGIC_NO_CHECK_CDF) == 0) {
		m = FUNC14(ms, &b);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)FUNC17(stderr, "[try cdf %d]\n", m);
		if (m) {
			if (FUNC2(ms, &rv))
				goto done;
		}
	}
#ifdef BUILTIN_ELF
	if ((ms->flags & MAGIC_NO_CHECK_ELF) == 0 && nb > 5 && fd != -1) {
		file_pushbuf_t *pb;
		/*
		 * We matched something in the file, so this
		 * *might* be an ELF file, and the file is at
		 * least 5 bytes long, so if it's an ELF file
		 * it has at least one byte past the ELF magic
		 * number - try extracting information from the
		 * ELF headers that cannot easily be  extracted
		 * with rules in the magic file. We we don't
		 * print the information yet.
		 */
		if ((pb = file_push_buffer(ms)) == NULL)
			return -1;

		rv = file_tryelf(ms, &b);
		rbuf = file_pop_buffer(ms, pb);
		if (rv == -1) {
			free(rbuf);
			rbuf = NULL;
		}
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)fprintf(stderr, "[try elf %d]\n", m);
	}
#endif

	/* try soft magic tests */
	if ((ms->flags & MAGIC_NO_CHECK_SOFT) == 0) {
		m = FUNC13(ms, &b, NULL, NULL, BINTEST, looks_text);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)FUNC17(stderr, "[try softmagic %d]\n", m);
		if (m == 1 && rbuf) {
			if (FUNC11(ms, "%s", rbuf) == -1)
				goto done;
		}
		if (m) {
			if (FUNC2(ms, &rv))
				goto done;
		}
	}

	/* try text properties */
	if ((ms->flags & MAGIC_NO_CHECK_TEXT) == 0) {

		m = FUNC4(ms, &b, looks_text);
		if ((ms->flags & MAGIC_DEBUG) != 0)
			(void)FUNC17(stderr, "[try ascmagic %d]\n", m);
		if (m) {
			goto done;
		}
	}

simple:
	/* give up */
	if (m == 0) {
		m = 1;
		rv = FUNC5(ms, nb);
		if (rv == 0)
			if (FUNC11(ms, "%s", def) == -1)
				rv = -1;
	}
 done:
	if ((ms->flags & MAGIC_MIME_ENCODING) != 0) {
		if (ms->flags & MAGIC_MIME_TYPE)
			if (FUNC11(ms, "; charset=") == -1)
				rv = -1;
		if (FUNC11(ms, "%s", code_mime) == -1)
			rv = -1;
	}
#if PHP_FILEINFO_UNCOMPRESS
 done_encoding:
#endif
	FUNC3(rbuf);
	FUNC0(&b);
	if (rv)
		return rv;

	return m;
}
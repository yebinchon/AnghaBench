#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_off_t ;
struct _phar_zip_pass {char** error; int /*<<< orphan*/  centralfp; int /*<<< orphan*/  filefp; } ;
struct TYPE_8__ {scalar_t__ s; } ;
typedef  TYPE_1__ smart_str ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_9__ {char* filename; int filename_len; int is_modified; size_t uncompressed_filesize; size_t compressed_filesize; TYPE_3__* phar; int /*<<< orphan*/ * fp; int /*<<< orphan*/  fp_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_10__ {size_t sig_flags; char* fname; int /*<<< orphan*/  is_data; } ;
typedef  TYPE_3__ phar_archive_data ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  PHAR_MOD ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 size_t FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,char**,size_t*,char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char**,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC14(phar_archive_data *phar, struct _phar_zip_pass *pass,
				   smart_str *metadata) /* {{{ */
{
	/* add signature for executable tars or tars explicitly set with setSignatureAlgorithm */
	if (!phar->is_data || phar->sig_flags) {
		size_t signature_length;
		char *signature, sigbuf[8];
		phar_entry_info entry = {0};
		php_stream *newfile;
		zend_off_t tell;

		newfile = FUNC9();
		if (newfile == NULL) {
			FUNC13(pass->error, 0, "phar error: unable to create temporary file for the signature file");
			return FAILURE;
		}
		tell = FUNC11(pass->filefp);
		/* copy the local files, central directory, and the zip comment to generate the hash */
		FUNC10(pass->filefp, 0, SEEK_SET);
		FUNC8(pass->filefp, newfile, tell, NULL);
		tell = FUNC11(pass->centralfp);
		FUNC10(pass->centralfp, 0, SEEK_SET);
		FUNC8(pass->centralfp, newfile, tell, NULL);
		if (metadata->s) {
			FUNC12(newfile, FUNC2(metadata->s), FUNC1(metadata->s));
		}

		if (FAILURE == FUNC5(phar, newfile, &signature, &signature_length, pass->error)) {
			if (pass->error) {
				char *save = *(pass->error);
				FUNC13(pass->error, 0, "phar error: unable to write signature to zip-based phar: %s", save);
				FUNC4(save);
			}

			FUNC7(newfile);
			return FAILURE;
		}

		entry.filename = ".phar/signature.bin";
		entry.filename_len = sizeof(".phar/signature.bin")-1;
		entry.fp = FUNC9();
		entry.fp_type = PHAR_MOD;
		entry.is_modified = 1;
		if (entry.fp == NULL) {
			FUNC13(pass->error, 0, "phar error: unable to create temporary file for signature");
			return FAILURE;
		}

		FUNC0(sigbuf, phar->sig_flags);
		FUNC0(sigbuf + 4, signature_length);

		if (FUNC3(8) != FUNC12(entry.fp, sigbuf, 8) || signature_length != FUNC12(entry.fp, signature, signature_length)) {
			FUNC4(signature);
			if (pass->error) {
				FUNC13(pass->error, 0, "phar error: unable to write signature to zip-based phar %s", phar->fname);
			}

			FUNC7(newfile);
			return FAILURE;
		}

		FUNC4(signature);
		entry.uncompressed_filesize = entry.compressed_filesize = signature_length + 8;
		entry.phar = phar;
		/* throw out return value and write the signature */
		FUNC6(&entry, (void *)pass);
		FUNC7(newfile);

		if (pass->error && *(pass->error)) {
			/* error is set by writeheaders */
			return FAILURE;
		}
	} /* signature */
	return SUCCESS;
}
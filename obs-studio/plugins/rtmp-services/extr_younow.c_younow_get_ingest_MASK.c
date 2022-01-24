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
struct younow_mem_struct {char const* memory; scalar_t__ size; } ;
struct dstr {void* array; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int /*<<< orphan*/  CURLOPT_SSL_ENABLE_ALPN ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_TIMEOUT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 char const* FUNC6 (scalar_t__) ; 
 char const* current_ingest ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dstr*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char const* FUNC12 (int) ; 
 char* FUNC13 (char const*,char) ; 
 char* FUNC14 (char const*) ; 
 void* younow_write_cb ; 

const char *FUNC15(const char *server, const char *key)
{
	CURL *curl_handle;
	CURLcode res;
	struct younow_mem_struct chunk;
	struct dstr uri;
	long response_code;

	// find the delimiter in stream key
	const char *delim = FUNC13(key, '_');
	if (delim == NULL) {
		FUNC0(LOG_WARNING,
		     "younow_get_ingest: delimiter not found in stream key");
		return server;
	}

	curl_handle = FUNC3();

	chunk.memory = FUNC12(1); /* will be grown as needed by realloc */
	chunk.size = 0;           /* no data at this point */

	FUNC9(&uri);
	FUNC7(&uri, server);
	FUNC10(&uri, key, delim - key);

	FUNC5(curl_handle, CURLOPT_URL, uri.array);
	FUNC5(curl_handle, CURLOPT_SSL_VERIFYPEER, true);
	FUNC5(curl_handle, CURLOPT_SSL_VERIFYHOST, 2L);
	FUNC5(curl_handle, CURLOPT_TIMEOUT, 3L);
	FUNC5(curl_handle, CURLOPT_WRITEFUNCTION, younow_write_cb);
	FUNC5(curl_handle, CURLOPT_WRITEDATA, (void *)&chunk);

#if LIBCURL_VERSION_NUM >= 0x072400
	// A lot of servers don't yet support ALPN
	curl_easy_setopt(curl_handle, CURLOPT_SSL_ENABLE_ALPN, 0);
#endif

	res = FUNC4(curl_handle);
	FUNC8(&uri);

	if (res != CURLE_OK) {
		FUNC0(LOG_WARNING,
		     "younow_get_ingest: curl_easy_perform() failed: %s",
		     FUNC6(res));
		FUNC1(curl_handle);
		FUNC11(chunk.memory);
		return server;
	}

	FUNC2(curl_handle, CURLINFO_RESPONSE_CODE, &response_code);
	if (response_code != 200) {
		FUNC0(LOG_WARNING,
		     "younow_get_ingest: curl_easy_perform() returned code: %ld",
		     response_code);
		FUNC1(curl_handle);
		FUNC11(chunk.memory);
		return server;
	}

	FUNC1(curl_handle);

	if (chunk.size == 0) {
		FUNC0(LOG_WARNING,
		     "younow_get_ingest: curl_easy_perform() returned empty response");
		FUNC11(chunk.memory);
		return server;
	}

	if (current_ingest) {
		FUNC11(current_ingest);
		current_ingest = NULL;
	}

	current_ingest = FUNC14(chunk.memory);
	FUNC11(chunk.memory);
	FUNC0(LOG_INFO, "younow_get_ingest: returning ingest: %s",
	     current_ingest);
	return current_ingest;
}
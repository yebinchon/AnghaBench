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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int HTTP_STATUS_GENERIC_ERROR ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ http_callback_registry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 char* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char) ; 

__attribute__((used)) static void FUNC17( char * response, int http_status, char ** full_response_p )
{
  const char *full_response = full_response_p ? *full_response_p : NULL;

#if defined(HTTPCLIENT_DEBUG_ON)
  dbg_printf( "http_status=%d\n", http_status );
  if ( http_status != HTTP_STATUS_GENERIC_ERROR )
  {
    if (full_response != NULL) {
      dbg_printf( "strlen(full_response)=%d\n", strlen( full_response ) );
    }
    dbg_printf( "response=%s<EOF>\n", response );
  }
#endif
  if (http_callback_registry != LUA_NOREF)
  {
    lua_State *L = FUNC7();

    FUNC13(L, LUA_REGISTRYINDEX, http_callback_registry);

    FUNC11(L, http_status);
    if ( http_status != HTTP_STATUS_GENERIC_ERROR && response)
    {
      FUNC12(L, response);
      FUNC8(L);

      const char *p = full_response;

      // Need to skip the HTTP/1.1 header line
      while (*p && *p != '\n') {
        p++;
      }
      if (*p == '\n') {
        p++;
      }

      while (*p && *p != '\r' && *p != '\n') {
        const char *eol = p;
        while (*eol && *eol != '\r') {
          eol++;
        }

        const char *colon = p;
        while (*colon != ':' && colon < eol) {
          colon++;
        }

        if (*colon != ':') {
          break;
        }

        const char *value = colon + 1;
        while (*value == ' ') {
          value++;
        }

        luaL_Buffer b;
        FUNC3(L, &b);
        while (p < colon) {
          FUNC2(&b, FUNC16((unsigned char) *p));
          p++;
        }
        FUNC4(&b);

        FUNC9(L, value, eol - value);
        FUNC14(L, -3);

        p = eol + 1;
        if (*p == '\n') {
          p++;
        }
      }
    }
    else
    {
      FUNC10(L);
      FUNC10(L);
    }

    if (full_response_p && *full_response_p) {
      FUNC1(*full_response_p);
      *full_response_p = NULL;
    }

    FUNC5(L, LUA_REGISTRYINDEX, http_callback_registry);
    http_callback_registry = LUA_NOREF;

    FUNC6(L, 3, 0); // With 3 arguments and 0 result
  }
}
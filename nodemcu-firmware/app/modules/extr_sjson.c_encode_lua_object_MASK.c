#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_3__ {scalar_t__ null_ref; } ;
typedef  TYPE_1__ ENC_DATA ;

/* Variables and functions */
 scalar_t__ LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  LUA_TBOOLEAN 132 
#define  LUA_TLIGHTUSERDATA 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static void FUNC13(lua_State *L, ENC_DATA *data, int argno, const char *prefix, const char *suffix) {
  luaL_Buffer b;
  FUNC2(L, &b);

  FUNC1(&b, prefix);

  int type = FUNC11(L, argno);

  if (type == LUA_TSTRING) {
    // Check to see if it is the NULL value
    if (data->null_ref != LUA_REFNIL) {
      FUNC8(L, LUA_REGISTRYINDEX, data->null_ref);
      if (FUNC5(L, -1, -2)) {
        type = LUA_TNIL;
      }
      FUNC6(L, 1);
    }
  }

  switch (type) {
    default:
      FUNC3(L, "Cannot encode type %d", type);
      break;

    case LUA_TLIGHTUSERDATA:
    case LUA_TNIL:
      FUNC1(&b, "null");
      break;

    case LUA_TBOOLEAN:
      FUNC1(&b, FUNC9(L, argno) ? "true" : "false");
      break;

    case LUA_TNUMBER:
    {
      FUNC7(L, argno);
      size_t len;
      const char *str = FUNC10(L, -1, &len);
      char value[len + 1];
      FUNC12(value, str);
      FUNC6(L, 1);
      FUNC1(&b, value);
      break;
    }

    case LUA_TSTRING:
    {
      FUNC0(&b, '"');
      size_t len;
      const char *str = FUNC10(L, argno, &len);
      while (len > 0) {
        if ((*str & 0xff) < 0x20) {
          char value[8];
          value[0] = '\\';

          char *d = value + 1;

          switch(*str) {
            case '\f':
              *d++ = 'f';
              break;
            case '\n':
              *d++ = 'n';
              break;
            case '\t':
              *d++ = 't';
              break;
            case '\r':
              *d++ = 'r';
              break;
            case '\b':
              *d++ = 'b';
              break;

            default:
              *d++ = 'u';
              *d++ = '0';
              *d++ = '0';
              *d++ = "0123456789abcdef"[(*str >> 4) & 0xf];
              *d++ = "0123456789abcdef"[(*str     ) & 0xf];
              break;

          }
          *d = '\0';
          FUNC1(&b, value);
        } else if (*str == '"') {
          FUNC1(&b, "\\\"");
        } else {
          FUNC0(&b, *str);
        }
        str++;
        len--;
      }
      FUNC0(&b, '"');
      break;
    }
  }

  FUNC1(&b, suffix);
  FUNC4(&b);
}
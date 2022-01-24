#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* extraHeaders; scalar_t__ reservedData; } ;
typedef  TYPE_1__ ws_info ;
typedef  int /*<<< orphan*/  ws_data ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/ * value; void* key; } ;
typedef  TYPE_2__ header_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  METATABLE_WSCLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC9 (TYPE_2__*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(lua_State *L) {
  FUNC0("websocketclient_config is called.\n");

  ws_info *ws = (ws_info *) FUNC2(L, 1, METATABLE_WSCLIENT);

  ws_data *data = (ws_data *) ws->reservedData;

  FUNC1(L, 2, LUA_TTABLE);
  FUNC3(L, 2, "headers");
  if(FUNC4(L, -1)) {

    FUNC7(L);
    int size = 0;
    while(FUNC5(L, -2)) {
      size++;
      FUNC6(L, 1);
    }

    ws->extraHeaders = FUNC9(ws->extraHeaders, size);
    if(ws->extraHeaders) {
      header_t *header = ws->extraHeaders;

      FUNC7(L);
      while(FUNC5(L, -2)) {
        header->key = FUNC10(FUNC8(L, -2));
        header->value = FUNC10(FUNC8(L, -1));
        header++;
        FUNC6(L, 1);
      }

      header->key = header->value = NULL;
    }
  }
  FUNC6(L, 1); // pop headers

  return 0;
}
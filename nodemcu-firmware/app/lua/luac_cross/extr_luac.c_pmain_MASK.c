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
struct Smain {int argc; char** argv; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Proto ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int LUA_ERR_CC_INTOVERFLOW ; 
 int LUA_ERR_CC_NOTINTEGER ; 
 int /*<<< orphan*/  address ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dumping ; 
 char const* execute ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ flash ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int listing ; 
 int /*<<< orphan*/  lookup ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC18 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maxSize ; 
 int /*<<< orphan*/ * output ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  stripping ; 
 int /*<<< orphan*/  target ; 
 int /*<<< orphan*/  writer ; 

__attribute__((used)) static int FUNC21(lua_State* L)
{
 struct Smain* s = (struct Smain*)FUNC19(L, 1);
 int argc=s->argc;
 char** argv=s->argv;
 const Proto* f;
 int i;
 if (!FUNC12(L,argc)) FUNC4("too many input files");
 if (execute)
 {
  if (FUNC8(L,execute)!=0) FUNC4(FUNC18(L,-1));
  FUNC9(L);
  FUNC17(L, execute);
  if (FUNC15(L, 1, 1, 0)) FUNC4(FUNC18(L,-1));
  if (!FUNC13(L, -1))
  {
   FUNC16(L,1);
   if(argc == 0) return 0;
   execute = NULL;
  }
 }
 for (i=0; i<argc; i++)
 {
  const char* filename=FUNC0("-") ? NULL : argv[i];
  if (FUNC8(L,filename)!=0) FUNC4(FUNC18(L,-1));
 }
 f=FUNC2(L,argc + (execute ? 1: 0), lookup);
 if (listing) FUNC11(f,listing>1);
 if (dumping)
 {
  int result;
  FILE* D= (output==NULL) ? stdout : FUNC7(output,"wb");
  if (D==NULL) FUNC1("open");
  FUNC14(L);
  if (flash)
  {
    result=FUNC3(L,f,writer, D, stripping, address, maxSize);
  } else
  {
    result=FUNC10(L,f,writer,D,stripping,target);
  }
  FUNC20(L);
  if (result==LUA_ERR_CC_INTOVERFLOW) FUNC4("value too big or small for target integer type");
  if (result==LUA_ERR_CC_NOTINTEGER) FUNC4("target lua_Number is integral but fractional value found");
  if (FUNC6(D)) FUNC1("write");
  if (FUNC5(D)) FUNC1("close");
 }
 return 0;
}
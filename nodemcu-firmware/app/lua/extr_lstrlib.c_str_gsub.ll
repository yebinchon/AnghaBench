; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_str_gsub.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_str_gsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@LUA_TLIGHTFUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"string/function/table/lightfunction expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_gsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 1, i64* %3)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_type(i32* %17, i32 3)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32 @luaL_optint(i32* %19, i32 4, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %27 ], [ 0, %30 ]
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LUA_TNUMBER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LUA_TSTRING, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @LUA_TFUNCTION, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LUA_TTABLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LUA_TLIGHTFUNCTION, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45, %41, %37, %31
  %54 = phi i1 [ true, %45 ], [ true, %41 ], [ true, %37 ], [ true, %31 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @luaL_argcheck(i32* %33, i32 %55, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @luaL_buffinit(i32* %57, i32* %11)
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32* %59, i32** %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %110, %53
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @match(%struct.TYPE_4__* %10, i8* %73, i8* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @add_value(%struct.TYPE_4__* %10, i32* %11, i8* %81, i8* %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i8*, i8** %12, align 8
  store i8* %92, i8** %4, align 8
  br label %106

93:                                               ; preds = %87, %84
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ult i8* %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 @luaL_addchar(i32* %11, i32 %102)
  br label %105

104:                                              ; preds = %93
  br label %111

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %111

110:                                              ; preds = %106
  br label %67

111:                                              ; preds = %109, %104, %67
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @luaL_addlstring(i32* %11, i8* %112, i32 %119)
  %121 = call i32 @luaL_pushresult(i32* %11)
  %122 = load i32*, i32** %2, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @lua_pushinteger(i32* %122, i32 %123)
  ret i32 2
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @add_value(%struct.TYPE_4__*, i32*, i8*, i8*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

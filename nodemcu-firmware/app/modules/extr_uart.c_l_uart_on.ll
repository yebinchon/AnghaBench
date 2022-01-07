; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_uart.c_l_uart_on.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_uart.c_l_uart_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@need_len = common dso_local global i32 0, align 4
@end_char = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@run_input = common dso_local global i32 0, align 4
@uart_receive_rf = common dso_local global i64 0, align 8
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"method not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_uart_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_uart_on(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 1, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i8* @luaL_checklstring(i32* %10, i32 %11, i64* %4)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %130

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @lua_type(i32* %21, i32 %22)
  %24 = load i64, i64* @LUA_TNUMBER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @luaL_checkinteger(i32* %27, i32 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @need_len, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  store i32 -1, i32* @end_char, align 4
  %33 = load i32, i32* @need_len, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  store i32 255, i32* @need_len, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @luaL_error(i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %130

38:                                               ; preds = %26
  br label %61

39:                                               ; preds = %20
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @lua_isstring(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @luaL_checklstring(i32* %45, i32 %46, i64* %5)
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %2, align 4
  br label %130

55:                                               ; preds = %44
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  store i32 %59, i32* @end_char, align 4
  store i32 0, i32* @need_len, align 4
  br label %60

60:                                               ; preds = %55, %39
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @lua_type(i32* %62, i32 %63)
  %65 = load i64, i64* @LUA_TFUNCTION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @lua_type(i32* %68, i32 %69)
  %71 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %67, %61
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i64 @lua_isnumber(i32* %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i64 @lua_tointeger(i32* %80, i32 %82)
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @lua_pushvalue(i32* %85, i32 %86)
  br label %91

88:                                               ; preds = %67
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_pushnil(i32* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i64, i64* %4, align 8
  %93 = icmp eq i64 %92, 4
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  store i32 1, i32* @run_input, align 4
  %99 = load i64, i64* @uart_receive_rf, align 8
  %100 = load i64, i64* @LUA_NOREF, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %105 = load i64, i64* @uart_receive_rf, align 8
  %106 = call i32 @luaL_unref(i32* %103, i32 %104, i64 %105)
  %107 = load i64, i64* @LUA_NOREF, align 8
  store i64 %107, i64* @uart_receive_rf, align 8
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @lua_isnil(i32* %109, i32 -1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %115 = call i64 @luaL_ref(i32* %113, i32 %114)
  store i64 %115, i64* @uart_receive_rf, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* @run_input, align 4
  br label %119

119:                                              ; preds = %118, %112
  br label %123

120:                                              ; preds = %108
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @lua_pop(i32* %121, i32 1)
  br label %123

123:                                              ; preds = %120, %119
  br label %129

124:                                              ; preds = %94, %91
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @lua_pop(i32* %125, i32 1)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @luaL_error(i32* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %128, i32* %2, align 4
  br label %130

129:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %124, %52, %35, %17
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

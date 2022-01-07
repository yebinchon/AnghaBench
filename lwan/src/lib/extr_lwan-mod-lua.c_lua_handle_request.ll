; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_lua_handle_request.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-lua.c_lua_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_response = type { i32 }
%struct.lwan_lua_priv = type { i32 }
%struct.cache = type { i32 }
%struct.lwan_lua_state = type { i32 }

@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@CONN_CORO_YIELD = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error from Lua script: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, %struct.lwan_response*, i8*)* @lua_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_handle_request(%struct.lwan_request* %0, %struct.lwan_response* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwan_request*, align 8
  %6 = alloca %struct.lwan_response*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lwan_lua_priv*, align 8
  %9 = alloca %struct.cache*, align 8
  %10 = alloca %struct.lwan_lua_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lwan_request* %0, %struct.lwan_request** %5, align 8
  store %struct.lwan_response* %1, %struct.lwan_response** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.lwan_lua_priv*
  store %struct.lwan_lua_priv* %15, %struct.lwan_lua_priv** %8, align 8
  %16 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %8, align 8
  %17 = call %struct.cache* @get_or_create_cache(%struct.lwan_lua_priv* %16)
  store %struct.cache* %17, %struct.cache** %9, align 8
  %18 = load %struct.cache*, %struct.cache** %9, align 8
  %19 = icmp ne %struct.cache* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @UNLIKELY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %122

26:                                               ; preds = %3
  %27 = load %struct.cache*, %struct.cache** %9, align 8
  %28 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %29 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @cache_coro_get_and_ref_entry(%struct.cache* %27, i32 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = inttoptr i64 %33 to %struct.lwan_lua_state*
  store %struct.lwan_lua_state* %34, %struct.lwan_lua_state** %10, align 8
  %35 = load %struct.lwan_lua_state*, %struct.lwan_lua_state** %10, align 8
  %36 = icmp ne %struct.lwan_lua_state* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @UNLIKELY(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @HTTP_NOT_FOUND, align 4
  store i32 %42, i32* %4, align 4
  br label %122

43:                                               ; preds = %26
  %44 = load %struct.lwan_lua_state*, %struct.lwan_lua_state** %10, align 8
  %45 = getelementptr inbounds %struct.lwan_lua_state, %struct.lwan_lua_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %48 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @push_newthread(i32 %46, i32 %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @UNLIKELY(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %43
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %64 = call i32 @get_handler_function(i32* %62, %struct.lwan_request* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @UNLIKELY(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @HTTP_NOT_FOUND, align 4
  store i32 %71, i32* %4, align 4
  br label %122

72:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %75 = call i32 @lwan_lua_state_push_request(i32* %73, %struct.lwan_request* %74)
  %76 = load %struct.lwan_lua_priv*, %struct.lwan_lua_priv** %8, align 8
  %77 = getelementptr inbounds %struct.lwan_lua_priv, %struct.lwan_lua_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %80 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %121
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @lua_resume(i32* %82, i32 %83)
  switch i32 %84, label %116 [
    i32 128, label %85
    i32 0, label %93
  ]

85:                                               ; preds = %81
  %86 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %87 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CONN_CORO_YIELD, align 4
  %92 = call i32 @coro_yield(i32 %90, i32 %91)
  store i32 0, i32* %12, align 4
  br label %121

93:                                               ; preds = %81
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @lua_isnil(i32* %94, i32 -1)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @HTTP_OK, align 4
  store i32 %98, i32* %4, align 4
  br label %122

99:                                               ; preds = %93
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @lua_isnumber(i32* %100, i32 -1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @lua_tointeger(i32* %104, i32 -1)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp sge i32 %106, 100
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = icmp sle i32 %109, 999
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %122

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %115, i32* %4, align 4
  br label %122

116:                                              ; preds = %81
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @lua_tostring(i32* %117, i32 -1)
  %119 = call i32 @lwan_status_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %120, i32* %4, align 4
  br label %122

121:                                              ; preds = %85
  br label %81

122:                                              ; preds = %116, %114, %111, %97, %70, %59, %41, %24
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.cache* @get_or_create_cache(%struct.lwan_lua_priv*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @cache_coro_get_and_ref_entry(%struct.cache*, i32, i8*) #1

declare dso_local i32* @push_newthread(i32, i32) #1

declare dso_local i32 @get_handler_function(i32*, %struct.lwan_request*) #1

declare dso_local i32 @lwan_lua_state_push_request(i32*, %struct.lwan_request*) #1

declare dso_local i32 @lua_resume(i32*, i32) #1

declare dso_local i32 @coro_yield(i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lwan_status_error(i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

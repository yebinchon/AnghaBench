; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_decoder_write_int.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_decoder_write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, i64, i64, i32, i8*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"sjson.decoder\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"JSON parse error: previous call\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"JSON parse error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @sjson_decoder_write_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjson_decoder_write_int(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @luaL_checkudata(i32* %16, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @luaL_checklstring(i32* %20, i32 %21, i64* %9)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @luaL_error(i32* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %131, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LUA_NOREF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @luaL_buffinit(i32* %45, i32* %11)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lua_rawgeti(i32* %47, i32 %48, i64 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @luaL_checklstring(i32* %53, i32 -1, i64* %12)
  store i8* %54, i8** %13, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @lua_pop(i32* %55, i32 1)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %12, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %44
  %75 = load i8*, i8** %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @luaL_addlstring(i32* %11, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %44
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @luaL_unref(i32* %84, i32 %85, i64 %88)
  %90 = load i64, i64* @LUA_NOREF, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @lua_pushvalue(i32* %93, i32 %94)
  %96 = call i32 @luaL_addvalue(i32* %11)
  %97 = call i32 @luaL_pushresult(i32* %11)
  br label %102

98:                                               ; preds = %35
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @lua_pushvalue(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %78
  %103 = load i32*, i32** %5, align 8
  %104 = call i8* @luaL_checklstring(i32* %103, i32 -1, i64* %15)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = call i64 @lua_ref(i32* %110, i32 1)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @jsonsl_feed(i32 %116, i8* %117, i64 %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %102
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32*, i8*, ...) @luaL_error(i32* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %124, %102
  br label %131

131:                                              ; preds = %130, %30
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %139 = call i32 @sjson_free_working_data(i32* %137, %struct.TYPE_4__* %138)
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %142 = call i32 @sjson_decoder_result_int(i32* %140, %struct.TYPE_4__* %141)
  store i32 %142, i32* %4, align 4
  br label %144

143:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %136
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i64 @lua_ref(i32*, i32) #1

declare dso_local i32 @jsonsl_feed(i32, i8*, i64) #1

declare dso_local i32 @sjson_free_working_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @sjson_decoder_result_int(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

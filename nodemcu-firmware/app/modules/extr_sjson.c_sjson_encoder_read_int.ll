; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder_read_int.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@LUA_NOREF = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @sjson_encoder_read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjson_encoder_read_int(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @luaL_buffinit(i32* %12, i32* %8)
  br label %14

14:                                               ; preds = %93, %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LUA_NOREF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @lua_rawgeti(i32* %21, i32 %22, i64 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @lua_tolstring(i32* %27, i32 -1, i64* %9)
  store i8* %28, i8** %10, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @luaL_addlstring(i32* %8, i8* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %43
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @lua_unref(i32* %67, i64 %70)
  %72 = load i64, i64* @LUA_NOREF, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %43
  br label %76

76:                                               ; preds = %75, %14
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = call i32 @sjson_encoder_make_next_chunk(i32* %80, %struct.TYPE_4__* %81)
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LUA_NOREF, align 8
  %92 = icmp ne i64 %90, %91
  br label %93

93:                                               ; preds = %87, %84
  %94 = phi i1 [ false, %84 ], [ %92, %87 ]
  br i1 %94, label %14, label %95

95:                                               ; preds = %93
  %96 = call i32 @luaL_pushresult(i32* %8)
  %97 = load i32*, i32** %5, align 8
  %98 = call i8* @lua_tolstring(i32* %97, i32 -1, i64* %9)
  %99 = load i64, i64* %9, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @lua_pop(i32* %102, i32 1)
  store i32 0, i32* %4, align 4
  br label %105

104:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_unref(i32*, i64) #1

declare dso_local i32 @sjson_encoder_make_next_chunk(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

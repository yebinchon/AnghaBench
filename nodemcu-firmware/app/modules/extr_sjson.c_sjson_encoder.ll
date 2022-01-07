; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@DEFAULT_DEPTH = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sjson.encoder\00", align 1
@LUA_NOREF = common dso_local global i8* null, align 8
@LUA_REFNIL = common dso_local global i8* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sjson_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjson_encoder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @DEFAULT_DEPTH, align 4
  store i32 %7, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @LUA_TTABLE, align 8
  %12 = call i32 @luaL_checktype(i32* %8, i32 %9, i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @lua_type(i32* %13, i32 %14)
  %16 = load i64, i64* @LUA_TTABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lua_getfield(i32* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @lua_tointeger(i32* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @DEFAULT_DEPTH, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 1000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1000, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 16
  %45 = add i64 32, %44
  %46 = trunc i64 %45 to i32
  %47 = call i64 @lua_newuserdata(i32* %41, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %5, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @luaL_getmetatable(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_setmetatable(i32* %51, i32 -2)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 1
  %60 = bitcast %struct.TYPE_5__* %59 to %struct.TYPE_4__*
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load i8*, i8** @LUA_NOREF, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %87, %40
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i8*, i8** @LUA_NOREF, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %71, i8** %78, align 8
  %79 = load i8*, i8** @LUA_REFNIL, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %79, i8** %86, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %66

90:                                               ; preds = %66
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = call i32 @enc_push_stack(i32* %91, %struct.TYPE_5__* %92, i32 1)
  %94 = load i8*, i8** @LUA_REFNIL, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @lua_type(i32* %97, i32 %98)
  %100 = load i64, i64* @LUA_TTABLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %90
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @luaL_unref(i32* %103, i32 %104, i8* %107)
  %109 = load i8*, i8** @LUA_NOREF, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @lua_getfield(i32* %112, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32*, i32** %2, align 8
  %116 = call i8* @lua_ref(i32* %115, i32 1)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %102, %90
  ret i32 1
}

declare dso_local i32 @luaL_checktype(i32*, i32, i64) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @enc_push_stack(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i8* @lua_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

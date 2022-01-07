; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"enduser_setup_init\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@ENDUSER_SETUP_ERR_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@LUA_NOREF = common dso_local global i8* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"enduser_setup_init: Debug callback has been set\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"init failed. Appears to already be started. EUS will shut down now.\00", align 1
@ENDUSER_SETUP_ERR_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"init failed. Unable to allocate memory.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @enduser_setup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENDUSER_SETUP_ERR_ALREADY_INITIALIZED, align 4
  store i32 %8, i32* %3, align 4
  br label %39

9:                                                ; preds = %1
  %10 = call i64 @calloc(i32 1, i32 64)
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** @state, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 64)
  %19 = load i8*, i8** @LUA_NOREF, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @LUA_NOREF, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @LUA_NOREF, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %16, %14
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_isnoneornil(i32* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @lua_pushvalue(i32* %44, i32 1)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = call i8* @luaL_ref(i32* %46, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %43, %39
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @lua_isnoneornil(i32* %52, i32 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_pushvalue(i32* %56, i32 2)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %60 = call i8* @luaL_ref(i32* %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %51
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @lua_isnoneornil(i32* %64, i32 3)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @lua_pushvalue(i32* %68, i32 3)
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %72 = call i8* @luaL_ref(i32* %70, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %67, %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ENDUSER_SETUP_ERR_ALREADY_INITIALIZED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @ENDUSER_SETUP_ERR_ALREADY_INITIALIZED, align 4
  %82 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %83 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %93

84:                                               ; preds = %76
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %90 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %91 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

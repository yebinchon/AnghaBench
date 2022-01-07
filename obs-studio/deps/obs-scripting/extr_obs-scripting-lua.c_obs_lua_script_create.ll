; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OBS_SCRIPT_LANG_LUA = common dso_local global i32 0, align 4
@LUA_REFNIL = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_lua_script_create(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_lua_script*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call %struct.obs_lua_script* @bzalloc(i32 28)
  store %struct.obs_lua_script* %9, %struct.obs_lua_script** %6, align 8
  %10 = load i32, i32* @OBS_SCRIPT_LANG_LUA, align 4
  %11 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %12 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @LUA_REFNIL, align 4
  %15 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %16 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = call i32 @pthread_mutexattr_init(i32* %7)
  %18 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %19 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %18, i32 0, i32 2
  %20 = call i32 @pthread_mutex_init_value(i32* %19)
  %21 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %22 = call i32 @pthread_mutexattr_settype(i32* %7, i32 %21)
  %23 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %24 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %23, i32 0, i32 2
  %25 = call i64 @pthread_mutex_init(i32* %24, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %29 = call i32 @bfree(%struct.obs_lua_script* %28)
  store i32* null, i32** %3, align 8
  br label %97

30:                                               ; preds = %2
  %31 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %32 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @dstr_copy(i32* %33, i8* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 47)
  br label %47

46:                                               ; preds = %38, %30
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i8* [ %45, %43 ], [ null, %46 ]
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %55 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @dstr_copy(i32* %56, i8* %57)
  %59 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %60 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %59, i32 0, i32 1
  %61 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %62 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @dstr_left(i32* %60, i32* %63, i32 %69)
  br label %77

71:                                               ; preds = %47
  %72 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %73 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @dstr_copy(i32* %74, i8* %75)
  br label %77

77:                                               ; preds = %71, %51
  %78 = call i32 (...) @obs_data_create()
  %79 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %80 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %86 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @obs_data_apply(i32 %88, i32* %89)
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %93 = bitcast %struct.obs_lua_script* %92 to i32*
  %94 = call i32 @obs_lua_script_load(i32* %93)
  %95 = load %struct.obs_lua_script*, %struct.obs_lua_script** %6, align 8
  %96 = bitcast %struct.obs_lua_script* %95 to i32*
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %91, %27
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

declare dso_local %struct.obs_lua_script* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @bfree(%struct.obs_lua_script*) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dstr_left(i32*, i32*, i32) #1

declare dso_local i32 @obs_data_create(...) #1

declare dso_local i32 @obs_data_apply(i32, i32*) #1

declare dso_local i32 @obs_lua_script_load(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

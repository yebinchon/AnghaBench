; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_register_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_register_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i32, i8*, i32, i8*, i8*, i32 }
%struct.obs_context_data = type { i32 }

@obs = common dso_local global %struct.TYPE_10__* null, align 8
@OBS_INVALID_HOTKEY_ID = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"obs-hotkey: Available hotkey ids exhausted\00", align 1
@OBS_INVALID_HOTKEY_PAIR_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"hotkey_register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.obs_context_data*, i8*, i8*, i32, i8*)* @obs_hotkey_register_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_hotkey_register_internal(i32 %0, i8* %1, %struct.obs_context_data* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.obs_context_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.obs_context_data* %2, %struct.obs_context_data** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load i64, i64* @OBS_INVALID_HOTKEY_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @LOG_WARNING, align 4
  %28 = call i32 @blog(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %7
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %15, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = trunc i64 %38 to i32
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call %struct.TYPE_9__* @da_push_back_new(%struct.TYPE_9__* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %17, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i8* @bstrdup(i8* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @bstrdup(i8* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @OBS_INVALID_HOTKEY_PAIR_ID, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.obs_context_data*, %struct.obs_context_data** %10, align 8
  %74 = icmp ne %struct.obs_context_data* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %29
  %76 = load %struct.obs_context_data*, %struct.obs_context_data** %10, align 8
  %77 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32* @obs_data_get_array(i32 %78, i8* %79)
  store i32* %80, i32** %18, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @load_bindings(%struct.TYPE_9__* %81, i32* %82)
  %84 = load i32*, i32** %18, align 8
  %85 = call i32 @obs_data_array_release(i32* %84)
  %86 = load %struct.obs_context_data*, %struct.obs_context_data** %10, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @context_add_hotkey(%struct.obs_context_data* %86, i32 %87)
  br label %89

89:                                               ; preds = %75, %29
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = icmp ne %struct.TYPE_9__* %90, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 (...) @fixup_pointers()
  br label %99

99:                                               ; preds = %97, %89
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %101 = call i32 @hotkey_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %100)
  %102 = load i32, i32* %16, align 4
  ret i32 %102
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @da_push_back_new(%struct.TYPE_9__*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32* @obs_data_get_array(i32, i8*) #1

declare dso_local i32 @load_bindings(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

declare dso_local i32 @context_add_hotkey(%struct.obs_context_data*, i32) #1

declare dso_local i32 @fixup_pointers(...) #1

declare dso_local i32 @hotkey_signal(i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

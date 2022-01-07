; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32*, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@obs = common dso_local global %struct.TYPE_7__* null, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't create profiler name store\00", align 1
@scene_info = common dso_local global i32 0, align 4
@group_info = common dso_local global i32 0, align 4
@audio_line_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @obs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = call %struct.TYPE_7__* @bzalloc(i32 4)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** @obs, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_init_value(i32* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @pthread_mutex_init_value(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  br label %29

27:                                               ; preds = %3
  %28 = call i32* (...) @profiler_name_store_create()
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32* [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = call i32 @blog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %70

40:                                               ; preds = %29
  %41 = call i32 (...) @log_system_info()
  %42 = call i32 (...) @obs_init_data()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %70

45:                                               ; preds = %40
  %46 = call i32 (...) @obs_init_handlers()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %70

49:                                               ; preds = %45
  %50 = call i32 (...) @obs_init_hotkeys()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %70

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @bstrdup(i8* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* @bstrdup(i8* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = call i32 @obs_register_source(i32* @scene_info)
  %67 = call i32 @obs_register_source(i32* @group_info)
  %68 = call i32 @obs_register_source(i32* @audio_line_info)
  %69 = call i32 (...) @add_default_module_paths()
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %52, %48, %44, %37
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_7__* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i32* @profiler_name_store_create(...) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @log_system_info(...) #1

declare dso_local i32 @obs_init_data(...) #1

declare dso_local i32 @obs_init_handlers(...) #1

declare dso_local i32 @obs_init_hotkeys(...) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @obs_register_source(i32*) #1

declare dso_local i32 @add_default_module_paths(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
